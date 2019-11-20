class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.integer :rating
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
