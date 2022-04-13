Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :decklists
  resources :cards
  resources :users, :only => [:new, :create, :index]
  resources :posts
  get '/search' => 'cards#searchresult'
  get '/login' => 'session#new' #get request to loging means i want to login. session#new is who i am logging in as
  post '/login' => 'session#create' # Here is my username and password from earlier. #create my sesssion
  delete '/login' => 'session#destroy'#logout of my account. #destroy my session
end
