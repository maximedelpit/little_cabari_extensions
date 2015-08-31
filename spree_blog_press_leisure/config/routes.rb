Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :blog_elements
  end

  resources :blog_elements, :only => [:index, :show], as: 'blog'
end
