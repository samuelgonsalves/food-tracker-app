Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/food_info/show', to: 'food_info#show'
  get '/goal/show', to: 'goal#show'
end
