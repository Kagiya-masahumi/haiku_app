Rails.application.routes.draw do
  devise_for :users
  root to: 'haikus#index'
  resources :haikus, only: [:index, :create, :show] do
    collection do
      get 'season_search'
    end
  end
end
