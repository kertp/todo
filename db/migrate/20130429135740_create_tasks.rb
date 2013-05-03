class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.datetime :deadline
      t.boolean :closed
      t.references :project
      t.timestamps
    end
  end
end
