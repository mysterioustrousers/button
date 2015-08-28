Button::Application.routes.draw do
  root "stitches#index"
  resources :stitches
  resources :needles
end
