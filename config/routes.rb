Rails.application.routes.draw do
  resources :rooms
  root 'rooms#index' #define la página de inicio

  #get '/rooms' => 'rooms#index', as: 'rooms' #página principal donde se muestra toda la información
   #get '/rooms/new' => 'rooms#new', as:'new_room' #crear habitaciones
    #post '/rooms' => 'rooms#create' #crear habitaciones estos métodos que involucran base de datos no necesitan el as
    #get '/rooms/:id/edit', to: 'rooms#edit', as:'edit_room' #editar habitaciones
    #patch '/rooms/:id', to: 'rooms#update', as:'room' #actualizar habitaciones estos métodos que involucran base de datos no necesitan el as
   # delete '/rooms/:id/', to: 'rooms#destroy'
end
