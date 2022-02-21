Rails.application.routes.draw do

  root 'static_pages#home'
  get '/what_we_do',        to: 'static_pages#service'
  get '/pricing',           to: 'static_pages#price'
  get '/help',              to: 'static_pages#help'
  get '/about',             to: 'static_pages#about'
  get '/privacy_policy',    to: 'static_pages#privacy_policy'
  get  '/signup',           to: 'users#new'
  post '/signup',           to: 'users#create'
  delete '/destroy',        to: 'users#destroy'
  get    '/login',          to: 'sessions#new'
  post   '/login',          to: 'sessions#create'
  delete '/logout',         to: 'sessions#destroy'
  get '/contact',           to: 'contacts#new'
  post '/contact',          to: 'contacts#create'
  get '/terms',             to: 'terms#terms'
  get '/terms/development', to: 'terms#development'
  get '/terms/marketing',   to: 'terms#marketing'
  get '/terms/privacy',     to: 'terms#privacy'
  get '/terms/translating', to: 'terms#translation'
  get '/terms/general',     to: 'terms#general'

  get '/:locale',         to: 'static_pages#home'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :contacs,             only: [:new, :create]
end
