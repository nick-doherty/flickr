FlickrDemo::Application.routes.draw do
  break if ARGV.join.include? 'assets:precompile'
  root :to => 'pages#index'

  get '/search' => 'flickr#show'
end
