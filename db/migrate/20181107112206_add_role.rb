class AddRole < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name

      t.timestamps null: false
    end

    add_column :users, :roles_id, :integer, default:1

    remove_column :users, :is_admin


  end
end
