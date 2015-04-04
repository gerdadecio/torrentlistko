class RenameWebsiteToFeed < ActiveRecord::Migration
  def self.up
    rename_table :websites, :feeds
  end 
  def self.down
    rename_table :feeds, :websites
  end
end
