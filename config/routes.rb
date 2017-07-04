# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root 'hiro#qr_reader'

  get 'hiro/index/:image_id' => 'hiro#index'
  get 'qr_reader' => 'hiro#qr_reader'

  resources :images, only: %i[index create new show]
  get 'images/:image_id' => 'images#show', as: 'show_image'

  resources :qr, only: %i[new show]
  get 'download/:image_id' => 'qr#download'
end
