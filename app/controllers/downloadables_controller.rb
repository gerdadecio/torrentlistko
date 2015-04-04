class DownloadablesController < ApplicationController
  def index
    @downloadables = []
    favorites = current_user.favorite_media.collect{|f| "%#{f.name}%"}

    @downloadables = favorites.collect{ |favorite| Entry.search_by_title(favorite) }
      .flatten
      .uniq
  end
end
