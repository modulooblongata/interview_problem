Rails.application.routes.draw do
  get 'newuser' => 'users#new'
  resources :users
  
end
