class ChangeCategoriesFormatInEntries < ActiveRecord::Migration
  def self.up
    change_column :entries, :categories, :text, default: []
  end

  def self.down
    change_column :entries, :categories, :string
  end


end
