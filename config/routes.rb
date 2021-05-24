Rails.application.routes.draw do
  root to: 'questions#index'

  # index, show, new, create, update, destroy,
  resources :questions, except: [:destroy, :update]
end
