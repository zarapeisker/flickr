class AlbumPhotoBridge < ActiveRecord::Migration
  def change
    create_table :albums_photos do |t|
      t.references :album
      t.references :photo
    end
  end
end
