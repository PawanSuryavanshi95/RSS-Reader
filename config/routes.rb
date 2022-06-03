Rails.application.routes.draw do
  get 'home/index'

  get 'home/rss'

  post "/home/index" => "home#post"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
