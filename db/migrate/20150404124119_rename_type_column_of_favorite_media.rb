class RenameTypeColumnOfFavoriteMedia < ActiveRecord::Migration
  def change
    rename_column :favorite_media, :type, :medium_type
  end
end
