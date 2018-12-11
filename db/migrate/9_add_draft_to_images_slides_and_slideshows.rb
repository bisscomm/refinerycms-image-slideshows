class AddDraftToImagesSlidesAndSlideshows < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_image_slideshows, :draft, :boolean, null: false, default: false
    add_column :refinery_image_slides, :draft, :boolean, null: false, default: false
  end
end
