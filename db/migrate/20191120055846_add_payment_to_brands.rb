class AddPaymentToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :payment, :string
  end
end
