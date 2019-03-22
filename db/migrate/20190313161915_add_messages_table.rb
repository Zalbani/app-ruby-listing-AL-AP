class AddMessagesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :user_id
      t.integer :annonce_id

      t.timestamps null: false
    end
  end
end
