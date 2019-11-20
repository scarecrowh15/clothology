class AddBrandIdToUsers < ActiveRecord::Migration[5.1]
  def change

    add_column :users, :have_registered, :int
  end
end
