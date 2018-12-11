module Refinery
  module ImageSlideshows
    class ImageSlide < Refinery::Core::BaseModel
      self.table_name = 'refinery_image_slides'

      extend Mobility
      translates :title, :caption, :link_url, :body

      acts_as_indexed fields: [:title]

      validates :title, presence: true

      belongs_to :image_slideshow
      belongs_to :image, class_name: '::Refinery::Image'

      class << self

        def live
          where draft: false
        end

      end

      def live?
        !draft?
      end

    end
  end
end
