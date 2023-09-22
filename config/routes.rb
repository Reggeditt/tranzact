Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions', # Custom sessions controller
    registrations: 'user/registrations' # Custom registrations controller
  }
  resources :categories do
    resource :cashflows
  end

  root "hero#index"
end
