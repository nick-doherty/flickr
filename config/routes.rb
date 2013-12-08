FlickrDemo::Application.routes.draw do
  root :to => 'pages#index'

  get '/search' => 'flickr#show'
end
