class RemoveHeightWidthJsConfigToImageSlideshows < ActiveRecord::Migration[5.1]
  def change
    remove_column :refinery_image_slideshows, :height
    remove_column :refinery_image_slideshows, :width
    remove_column :refinery_image_slideshows, :js_config
  end
end
