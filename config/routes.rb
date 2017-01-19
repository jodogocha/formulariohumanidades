Rails.application.routes.draw do
  get 'inicio/index'
  post 'inicio/index'
  root 'inicio#index'

  resources :alumnos
  resources :carreras
  resources :tpersonas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
