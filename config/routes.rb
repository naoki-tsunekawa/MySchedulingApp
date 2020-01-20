Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'schedules', to: 'schedules#index'
  get 'schedules/new', to: 'schedules#new'
  post 'schedules', to: 'schedules#create'
end
