module Refinery
  module ImageSlideshows
    module Admin
      class ImageSlideshowsController < ::Refinery::AdminController

        crudify :'refinery/image_slideshows/image_slideshow'

        protected

        def image_slideshow_params
          params.require(:image_slideshow).permit(permitted_image_slideshow_params)
        end

        private

        def permitted_image_slideshow_params
          [ :draft, :title, :position ]
        end
      end
    end
  end
end
