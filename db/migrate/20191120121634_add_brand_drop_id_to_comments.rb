class AddBrandDropIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :brand_drop_id, :integer
  end
end
