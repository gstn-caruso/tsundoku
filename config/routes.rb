Rails.application.routes.draw do
  get 'welcome/index'
  get ':image_id' => 'welcome#index'
  root 'welcome#index'

  resources :images, only: [:index, :create, :new, :show]
  root 'images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
