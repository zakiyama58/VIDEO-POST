Rails.application.routes.draw do
  get 'videos/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "videos#index"
end
