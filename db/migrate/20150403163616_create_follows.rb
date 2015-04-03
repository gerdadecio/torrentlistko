class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
