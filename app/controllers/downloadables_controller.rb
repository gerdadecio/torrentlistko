class DownloadablesController < ApplicationController
  before_action :set_defaults_vars

  def index
    @downloadables = @favorites.collect{ |favorite| Entry.search_by_title(favorite) }
      .flatten
      .uniq
  end

  def search
    @downloadables = @favorites.collect do |favorite| 
      Entry.search_by_title(favorite)
      .search_by_title("%#{params[:keyword].downcase}%")
    end.flatten.uniq

    render 'index'
  end


  private
  def set_defaults_vars
    @downloadables = []
    @favorites = current_user.favorite_media.collect{|f| "%#{f.name}%"}
  end
end
