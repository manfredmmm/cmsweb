Web::Application.routes.draw do

  Mercury::Engine.routes

  devise_for :users

  root :to => "home#index"

  resources :teachers, :except => [:new,:create] do
    get :my_spaces
    resources :web_spaces do
      member { post :mercury_update }
      get :page
    end
  end

  namespace :admin do
    resources :teachers
    resources :departments
  end
end
