Rails.application.routes.draw do
  # VERB PATH: 'CONTROLLER' / 'ACTION'
  get 'pages/contact'
  # get 'pages/about'

  # VERB PATH, TO: CONTROLLER#ACTION
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # get '/', to: 'pages#landing'
  root to: 'pages#landing'
end
