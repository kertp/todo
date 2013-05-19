class AddIndexToUsersMail < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.change :mail, :string, :unique => true
	end
  end
end
