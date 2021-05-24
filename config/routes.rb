Rails.application.routes.draw do
  root to: 'questions#index'

  # index, show, new, create, update, destroy,
  # get "/questions", to: "questions#index"
  resources :questions, except: [:destroy, :update]
end
