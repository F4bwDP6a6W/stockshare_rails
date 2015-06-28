class AddAvatarColumnsToStock < ActiveRecord::Migration
  def up
    add_attachment :stocks, :avatar
  end

  def down
    remove_attachment :stocks, :avatar
  end
end