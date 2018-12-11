# frozen_string_literal: true
class CreateImageSlidesTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :refinery_image_slide_translations do |t|
      # Translated attribute(s)
      t.string :title
      t.string :caption
      t.string :link_url

      t.string  :locale, null: false
      t.integer :refinery_image_slide_id, null: false

      t.timestamps null: false
    end

    add_index :refinery_image_slide_translations, :locale, name: :index_8a4a2e1ce2c2f55f4778012dc82b5ec014fac0f5
    add_index :refinery_image_slide_translations, [:refinery_image_slide_id, :locale], name: :index_299ee7f96d4de207d5ce93e99727d66ae68c25f2, unique: true

  end
end
