class Public::FavoritesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @favorites=Favorite.all
  end


  def create
    Favorite.create(user_id: current_user.id, letter_id: params[:id])
    letter=Letter.find(params[:id])
    redirect_to sample_path(letter.genre_id)
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, letter_id: params[:id])
    favorite.destroy
    redirect_back(fallback_location: favorites_path)
    # redirect_to favorites_path
  end

end
