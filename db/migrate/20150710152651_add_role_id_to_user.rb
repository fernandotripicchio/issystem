class AddRoleIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :references
  end
end
