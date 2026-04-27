Rails.application.routes.draw do
  resources :oeuvres
  resources :explorations
  resources :questions
  resources :fire_points
  resources :string_spirits
  resources :exemple_musicals
  resources :coup_archet_tags
  resources :puce_categories
  resources :caracteres
  resources :style_musicals
  resources :media
  resources :coup_archets do
    resources :exemple_musicals do
      resources :media
    end
  end
  resources :epoques
  resources :instruments
  resources :restorations
  get "welcome/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "welcome#index"
end
