class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :company_id
      t.string :payment_receipt
      t.string :active

      t.timestamps
    end
  end
end
