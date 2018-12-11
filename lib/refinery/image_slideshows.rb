require 'refinerycms-core'
require 'refinerycms-images'
require 'acts_as_indexed'

module Refinery
  autoload :ImageSlideshowsGenerator, 'generators/refinery/image_slideshows_generator'

  module ImageSlideshows
    require 'refinery/image_slideshows/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
