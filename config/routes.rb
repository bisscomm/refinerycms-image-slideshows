# frozen_string_literal: true
Refinery::Core::Engine.routes.draw do

  # Admin routes
  namespace :image_slideshows, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :image_slideshows do
        resources :image_slides, :except => :show do
          collection do
            post :update_positions
          end
        end
        collection do
          post :update_positions
        end
      end
    end
  end

end
