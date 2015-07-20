Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :lookbooks do
      collection do
        post :update_positions
      end
      #   post :update_positions,:on => :collection
      #   resources :lookbook_images, :path => :images do
      #   post :update_positions,:on => :collection
      # end
    end
  end

  resources :lookbooks, :only => [:index, :show]
end
