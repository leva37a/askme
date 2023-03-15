Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/new'
  root to: "questions#index"

  resources :users, only: %i[new create]
  resource :session, only: %i[new create]

  resources :questions do
    put :hide, on: :member
  end
end
