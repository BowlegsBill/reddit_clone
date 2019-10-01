Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments, only: [:create]
    resources :reactions, only: [] do
      collection do
        post :up
        post :down
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
end
