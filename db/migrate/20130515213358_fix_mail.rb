class FixMail < ActiveRecord::Migration
  def change
  	rename_column :Users, :mail, :email
  	rename_column :Users, :password_digest, :password_salt
  end
end
