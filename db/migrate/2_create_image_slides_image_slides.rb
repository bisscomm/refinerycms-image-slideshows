# frozen_string_literal: true
class CreateImageSlidesImageSlides < ActiveRecord::Migration[5.1]

  def up
    create_table :refinery_image_slides do |t|
      t.string :title
      t.integer :position
      t.integer :image_slideshow_id

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-image_slides"})
    end

    drop_table :refinery_image_slides

  end

end
