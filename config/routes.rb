Rails.application.routes.draw do
  
  devise_for :users
  root 'ninja#index'
  get 'ninjas' =>'ninja#index'
  get 'ninjas/new' => 'ninja#new'
  post 'ninjas' => 'ninja#create'
  get 'users/:id' => 'users#show'
  delete 'ninjas/:id' => 'ninja#destroy'
  get 'ninjas/:id/edit' => 'ninja#edit'
  patch 'ninjas/:id' => 'ninja#update'
end

