Web::Application.routes.draw do

  devise_for :users

  root :to => "home#index"

  resources :teachers, :except => [:new,:create] do
    resources :web_spaces
  end

  namespace :admin do
    resources :teachers
    resources :departments
  end
end
