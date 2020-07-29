class FavoritesController < ApplicationController
  include CurrentUserConcern

  def index
    favorites_ids = @current_user.favorites.pluck(:house_id)
    @favorites = House.find(favorites_ids)
    json_response(@favorites)
  end

  def create
    @favorite = @current_user.favorites.new(favorite_params)
    json_response(@favorite, :created) if @favorite.save
  end

  def destroy
    @favorite = @current_user.favorites.find_by(favorite_params)
    @favorite.delete
    render json: {
      status: "deleted"
    }
  end

  def is_favorite
    @favorite = @current_user.favorites.find_by(favorite_params)
    if @favorite === nil
      render json: {
        status: nil
      }
    else
      render json: {
        status: true,
        favoriteId: @favorite.id
      }
    end
  end

  private

  def favorite_params
    params.permit(:house_id, :id)
  end

end
