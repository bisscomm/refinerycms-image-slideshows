# frozen_string_literal: true
class AddHeightAndWidthToImageSlideshows < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_image_slideshows, :height, :string
    add_column :refinery_image_slideshows, :width, :string
  end
end