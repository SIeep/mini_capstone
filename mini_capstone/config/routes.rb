Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  namespace :api do
    get '/products' => 'products#index' #index route
    get '/products/:id' => 'products#show' #show route
    post '/products/' => 'products#create' #create route
    put '/products/:id' => 'products#update' #update route
    delete '/products/:id' => 'products#delete' #delete route
    #
    # suppliers routes below
    #
    get '/suppliers' => 'suppliers#index'
    get '/suppliers/:id' => 'suppliers#show'
    post '/suppliers/' => 'suppliers#create'
    put '/suppliers/:id' => 'suppliers#update'
    delete '/suppliers/:id' => 'suppliers#delete'
    #
    # images routes below
    #
    get '/images' => 'images#index'
    put 'images/:id' => 'images#update'
    get '/images/:id' => 'images#show'
    post '/images' => 'images#create'
    delete '/images/:id' => 'images#delete'
    #
    # user routes below
    #
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    #
    # session
    #
    post '/sessions' => 'sessions#create'

    post '/orders' => 'orders#create'
    get '/orders' => 'orders#index'

    post '/carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'
  end
end
