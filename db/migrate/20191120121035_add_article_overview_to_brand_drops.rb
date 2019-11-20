class AddArticleOverviewToBrandDrops < ActiveRecord::Migration[5.1]
  def change
    add_column :brand_drops, :article_overview, :string
  end
end
