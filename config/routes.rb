Web::Application.routes.draw do

  Mercury::Engine.routes

  # Support both GET and POST for callbacks
  %w(get post).each do |method|
    send method, "/auth/:provider/callback" => "teachers#update"
  end

  devise_for :users

  root :to => "home#index"

  resources :teachers, :except => [:new,:create] do
    get :my_spaces
    resources :web_spaces do
      resources :pages do
        member { post :mercury_update }
      end
    end
  end

  namespace :admin do
    resources :teachers
    resources :departments
  end
end
