class AddProductTypeToBrandDrops < ActiveRecord::Migration[5.1]
  def change
    add_column :brand_drops, :product_type, :string
  end
end
