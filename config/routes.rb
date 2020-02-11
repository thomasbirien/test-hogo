Rails.application.routes.draw do
  root to: "insurances#index"
  resources :insurances, only: [:index, :new, :create, :edit, :update, :destroy]
  get "insurances/choose_kind_of_quote", to: "insurances#choose_kind_of_quote"
end
