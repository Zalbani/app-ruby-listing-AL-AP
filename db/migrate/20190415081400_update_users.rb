class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :roles_id
    add_column :users, :role_id, :integer, default:1

  end
end
