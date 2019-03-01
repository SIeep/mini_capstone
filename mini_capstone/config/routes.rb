Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get '/product1' => 'products#rock'
    get '/product2' => 'products#leaf'
    get '/product3' => 'products#stick'
    get '/products' => 'products#all_products'
    get '/product' => 'products#any_product'
    get '/product/:product_id' => 'products#any_product'
  end
end
