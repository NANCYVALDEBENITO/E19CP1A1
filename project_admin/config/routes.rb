Rails.application.routes.draw do
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :projects do
   	resources :users_projects, only: [:create, :destroy2]
   end

  resources :users do
  	resources :users_projects, only: [:create, :destroy]
  end
  
  root to: 'users#index'

end
