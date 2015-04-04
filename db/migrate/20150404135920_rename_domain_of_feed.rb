class RenameDomainOfFeed < ActiveRecord::Migration
  def change
    rename_column :feeds, :domain, :url
  end
end
