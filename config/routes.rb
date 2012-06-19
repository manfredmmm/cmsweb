Web::Application.routes.draw do

  mount Mercury::Engine => '/'

  # Support both GET and POST for callbacks
  %w(get post).each do |method|
    send method, "/auth/:provider/callback" => "teachers#update"
  end

  scope ":locale", locale: /es|ca|en/ do
    Mercury::Engine.routes

    devise_for :users

    root :to => "home#index"

    resources :teachers, :except => [:new,:create] do
      get :my_spaces
      resources :web_spaces do
        resources :pages do
          member { put :mercury_update }
        end
      end
    end

    namespace :admin do
      resources :teachers
      resources :departments
    end
  end

  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  match '', to: redirect("/#{I18n.default_locale}")
end
