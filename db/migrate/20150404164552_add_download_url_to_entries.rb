class AddDownloadUrlToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :download_url, :string
  end
end
