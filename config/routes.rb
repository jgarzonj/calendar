Rails.application.routes.draw do
  resources :timings
  root 'timings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
