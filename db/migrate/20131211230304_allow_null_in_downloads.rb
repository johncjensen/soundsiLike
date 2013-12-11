class AllowNullInDownloads < ActiveRecord::Migration
  def change
  	change_column :downloads, :bpm, :integer, :null => true
  	change_column :downloads, :genre, :string, :null => true
  end
end
