Rails.application.routes.draw do
  root "static_pages#welcome"

  resources :articles
  resources :static_pages

  namespace :admin do
    resources :articles
    resources :article_categories
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
