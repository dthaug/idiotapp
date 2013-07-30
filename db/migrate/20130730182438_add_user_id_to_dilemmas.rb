class AddUserIdToDilemmas < ActiveRecord::Migration
  def change
    add_column :dilemmas, :user_id, :integer
    add_index :dilemmas, :user_id
  end
end
