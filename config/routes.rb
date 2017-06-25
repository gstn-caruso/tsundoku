Rails.application.routes.draw do
  get 'welcome/index/:image_id' => 'welcome#index'
  get 'qr_reader' => 'welcome#qr_reader'
  root 'welcome#qr_reader'

  resources :images, only: %i[index create new show]
  get 'images', to: :index, controller: 'images'
  get 'qr/:id' => 'images#qr'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
