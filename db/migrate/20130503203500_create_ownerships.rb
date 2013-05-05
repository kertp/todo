class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.boolean :owner
      t.references :project
      t.references :user
      t.timestamps
    end
    add_index :ownerships, :project_id
    add_index :ownerships, :user_id
  end
end
