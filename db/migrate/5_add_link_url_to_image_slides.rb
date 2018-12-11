# frozen_string_literal: true
class AddLinkUrlToImageSlides < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_image_slides, :link_url, :string
  end
end