class CreateBrandDrops < ActiveRecord::Migration[5.1]
  def change
    create_table :brand_drops do |t|
      t.string :article_title
      t.string :content
      t.references :brand, foreign_key: true
      t.string :article_image1
      t.string :article_image2
      t.string :article_image3

      t.timestamps
    end
  end
end
