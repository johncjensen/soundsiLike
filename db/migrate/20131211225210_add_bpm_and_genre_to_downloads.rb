class AddBpmAndGenreToDownloads < ActiveRecord::Migration
  def change
  	add_column :downloads, :bpm, :integer
  	add_column :downloads, :genre, :string
  	remove_column :downloads, :updated_at
  end
end
