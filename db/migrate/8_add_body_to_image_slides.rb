# frozen_string_literal: true
class AddBodyToImageSlides < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_image_slide_translations, :body, :text
  end
end