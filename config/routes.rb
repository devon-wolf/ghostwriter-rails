Rails.application.routes.draw do
  root "documents#index"
  get "/documents", to: "documents#index"
end