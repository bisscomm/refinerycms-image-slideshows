# frozen_string_literal: true
class AddJsConfigToImageSlideshows < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_image_slideshows, :js_config, :text
  end
end