class RemoveBpmFromDownloads < ActiveRecord::Migration
  def change
  	remove_column :downloads, :bpm
  end
end
