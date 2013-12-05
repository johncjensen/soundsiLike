class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.belongs_to :user
      t.string :url
      t.timestamps
    end
  end
end
