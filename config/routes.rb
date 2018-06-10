Rails.application.routes.draw do
  root to: 'links#new'

  resources :links, only: %i[new create show]

  get ':token', to: 'redirects#index', as: :redirect
end
