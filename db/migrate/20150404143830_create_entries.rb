class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :feed_id
      t.string :title
      t.datetime :published
      t.string :image_url
      t.text :summary

      t.timestamps
    end
  end
end
