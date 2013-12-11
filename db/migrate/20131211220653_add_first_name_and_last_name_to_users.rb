class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :name, :full_name
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :image, :string
  	add_column :users, :location, :string
  	add_column :users, :link, :string
  	add_column :users, :gender, :string
  	

  end
end
