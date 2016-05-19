Rails.application.routes.draw do


  #devise_for :users, :controllers => { registrations: 'registrations' }
  #devise_for :users, :controllers => { sessions: 'sessions' }

  namespace :users do
    devise_scope :user do
      post 'registrations' => 'registrations#create', :as => 'register'
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
    end
  end

end
