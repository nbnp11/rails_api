Rails.application.routes.draw do
  resources :buildings, only: [:create, :update, :show, :index]

  delete 'building/:id', to: "buildings#delete"

  get 'get_orm', to: 'buildings#get_orm'
end
