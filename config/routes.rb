Rails.application.routes.draw do
  root "documents#index"
  
  resources :documents do
    resources :comments
  end
  
end