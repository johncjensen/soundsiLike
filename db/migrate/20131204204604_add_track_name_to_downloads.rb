class AddTrackNameToDownloads < ActiveRecord::Migration
  def change
  	add_column :downloads, :track_title, :string
  end
end
