class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body

      t.references :stock, index: true

      t.timestamps
    end
    add_foreign_key :comments, :stocks
  end
end
