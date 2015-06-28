class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phonenumber, :string
    add_column :users, :province, :string
    add_column :users, :city, :string
    add_column :users, :area, :string
    add_column :users, :idcardimg, :string
    add_column :users, :role, :string
  end
end
