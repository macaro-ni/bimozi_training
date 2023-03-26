class Public::SamplesController < ApplicationController

 def index
   @genres=Genre.all
   @letter=Letter.new
 end

  def show
    @letters=Letter.where(genre_id: params[:id])
    @genre=Genre.find(params[:id])
  end

  def create
   entered_letter=Letter.new(entered_letter_params)
   entered_letter.save
   redirect_to new_sample_practice_path(entered_letter.id)
  end

 private
  def entered_letter_params
   params.require(:letter).permit(:name,:genre_id)
  end


end
