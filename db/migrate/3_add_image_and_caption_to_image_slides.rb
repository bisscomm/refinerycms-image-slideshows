# frozen_string_literal: true
class AddImageAndCaptionToImageSlides < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_image_slides, :image_id, :integer
    add_column :refinery_image_slides, :caption, :string
  end
end