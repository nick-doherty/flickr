FlickrDemo::Application.routes.draw do
  root :to => 'pages#index'

  post '/search' => 'flickr#show'
end
