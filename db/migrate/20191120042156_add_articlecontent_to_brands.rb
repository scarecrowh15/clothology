class AddArticlecontentToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :article_content, :text
  end
end
