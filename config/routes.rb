Rails.application.routes.draw do
  resources :entries

  resources :races

  resources :competitions

  resources :events do
    resources :pages
  end

  devise_for :users
  scope '/admin' do
    resources :users, as: 'users'
  end

  root to: 'home#index'
end
