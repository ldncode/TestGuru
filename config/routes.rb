Rails.application.routes.draw do
  root 'tests#index'
  resources :tests do
    resources :questions, shallow: true
  end
end
