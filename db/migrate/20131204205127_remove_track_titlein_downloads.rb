class RemoveTrackTitleinDownloads < ActiveRecord::Migration
  def change
  	remove_column :downloads, :track_title
  	add_column :downloads, :title, :string
  end
end
