Rails.application.routes.draw do
  root 'static_pages#home'
  get 'login'     => 'sessions#new'
  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'help'      => 'static_pages#help'
  get 'about'     => 'static_pages#about'
  get  'contact'  => 'static_pages#contact'
  get 'signup'    => 'users#new'
  resources :users 
end
