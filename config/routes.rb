Rails.application.routes.draw do
  resources :rooms, except: [:show]

  #get '/rooms' => 'rooms#index'
   #get '/rooms/new' => 'rooms#new'
    #post '/rooms' => 'rooms#create'
end
