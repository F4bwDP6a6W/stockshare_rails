class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :stockNumber
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
