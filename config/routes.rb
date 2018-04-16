Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #"GET /" loads the index action of the companies controller.

  root 'companies#index'

  get 'companies' => 'companies#index'

  get 'products' => 'products#index'

  get 'companies/:id' => 'companies#show', constraints: {id: /\d+/}, as: 'company'

  get 'products/:id' => 'products#show', constraints: {id: /\d+/}, as: 'product'

  get 'products/new' => 'product_creator#new'

  get 'users/new' => 'users#new'

  post 'users/create' => 'users#create'

  post 'products/create' => 'products#create'

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

end
