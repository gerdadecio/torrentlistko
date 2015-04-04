class RenameFollowToFavoriteMedium < ActiveRecord::Migration
  def self.up
    rename_table :follows, :favorite_media
  end 
  def self.down
    rename_table :favorite_media, :follows
  end
end
