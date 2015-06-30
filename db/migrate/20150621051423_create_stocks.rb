class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :stockNumber
      t.string :title
      t.string :price
      t.string :size
      t.integer :inventory
      t.string :color
      t.references :user, index: true, foreign_key: true
      t.text :text
      t.timestamps
    end
    add_index :stocks, [:user_id, :created_at]
  end
end
