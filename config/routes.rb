Rails.application.routes.draw do

  root to: "foods#index"
  get '/menu', to: 'foods#index', as: :menu
  get '/month', to: 'foods#month', as: :month
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
