Rails.application.routes.draw do
  resources :employees
  resources :positions

  get 'welcome/index'
  get '/employees/position/:position_id', controller: 'employees', action: 'for_position', as: 'for_position'
  root'welcome#index'
end
