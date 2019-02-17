Rails.application.routes.draw do
  resources :buildings, only: [:create, :update, :show, :index]

  delete 'building/:id', to: "buildings#delete"

  get 'get_orm', to: 'buildings#get_orm'
  get 'get_sql', to: 'buildings#get_sql'
end
