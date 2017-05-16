Rails.application.routes.draw do
  resources :employees
  resources :positions

  get 'welcome/index'

  root'welcome#index'
end
