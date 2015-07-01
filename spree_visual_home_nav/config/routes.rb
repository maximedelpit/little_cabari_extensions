 Spree::Core::Engine.add_routes do
    namespace :admin do
      resources :home_management
      resources :home_inserts
      resources :home_main_menus
    end
  end


  # Rails.application.routes.draw do
  #   namespace :admin do
  #     resources :home_management
  #     resources :home_inserts
  #     resources :home_main_menus
  #   end
  # end
