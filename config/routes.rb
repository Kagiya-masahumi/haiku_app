Rails.application.routes.draw do
  devise_for :users
  root to: 'haikus#index'
  resources :haikus, only: [:index, :create] do
    collection do
      get 'season_search'
    end
  end
end
