Rails.application.routes.draw do
  resources :pages

  resources :events

  devise_for :users
  scope '/admin' do
    resources :users, as: 'users'
  end

  root to: 'home#index'
end
