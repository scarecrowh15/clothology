class AddImageToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :image, :string
  end
end
