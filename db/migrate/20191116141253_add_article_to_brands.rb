class AddArticleToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :article_title, :string
    add_column :brands, :article_overview, :text
    add_column :brands, :article_image1, :string
    add_column :brands, :article_image2, :string
    add_column :brands, :article_image3, :string
  end
end
