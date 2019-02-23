Rails.application.routes.draw do
  root 'buildings#index'
  resources :buildings, only: [:create, :update, :show, :index]

  delete 'building/:id', to: "buildings#delete"

  get 'orm_request', to: 'buildings#orm_request'
  get 'sql_request', to: 'buildings#sql_request'
end
