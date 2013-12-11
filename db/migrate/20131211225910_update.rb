class Update < ActiveRecord::Migration
  def change
  	change_column :downloads, :bpm, :integer, :null => false
  	change_column :downloads, :genre, :string, :null => false
  end
end


