class DownloadablesController < ApplicationController
  def index
    @downloadables = []
    favorites = current_user.favorite_media.collect{|f| "%#{f.name}%"}

    @downloadables = favorites.collect do |favorite|
      Entry.search_by_title(favorite)
    end.flatten.uniq
  end
end
