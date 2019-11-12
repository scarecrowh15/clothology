class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :company_id
      t.string :company_name
      t.string :email
      t.string :phone
      t.string :product_type
      t.string :product_name
      t.string :active

      t.timestamps
    end
  end
end
