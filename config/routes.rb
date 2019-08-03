Rails.application.routes.draw do
  root "products#index"#, as: 'products'

  resources :products
end
