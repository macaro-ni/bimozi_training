class Public::SamplesController < ApplicationController

 def index
   @genres=Genre.all
 end

  def show
    @letters=Letter.where(genre_id: params[:id])
    @genre=Genre.find(params[:id])
  end
end
