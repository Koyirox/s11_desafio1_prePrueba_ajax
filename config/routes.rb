Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'comments/index'
  post 'comments', to: 'comments#create'
  root 'comments#index'
end
