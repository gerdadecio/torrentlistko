class FavoriteMediaController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorite_media = current_user.favorite_media
    @favorite_medium = FavoriteMedium.new
  end

  def create
    @favorite_medium = current_user.favorite_media.find_or_create_by(name: favorite_media_params[:name], medium_type: favorite_media_params[:medium_type])

    if @favorite_medium
      redirect_to user_favorite_media_path
    else
      render 'index'
    end
  end

  def destroy
    favorite_medium = current_user.favorite_media.find(params[:id])
    if favorite_medium.destroy
      flash[:notice] = "Favorite media deleted."
    else
      flash[:error] = favorite_medium.errors.full_messages.join('. ')
    end
    redirect_to user_favorite_media_path
  end

  private

  def favorite_media_params
    params.require(:favorite_medium).permit(
      :name, 
      :medium_type
    )
  end
end
