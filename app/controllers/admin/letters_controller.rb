class Admin::LettersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @letter=Letter.new
    @genres=Genre.all

  end

  def show
    @letters=Letter.where(genre_id: params[:id])
    @genre=Genre.find(params[:id])
  end


  def edit
    @letter=Letter.find(params[:id])
  end

  def create
    @letter=Letter.new(letter_params)
    @letter.user_id = current_admin.id
    if @letter.save
      redirect_to admin_letter_path(@letter.genre_id)
    else
      @genres=Genre.all
      render :index
    end
  end

  def update
    letter=Letter.find(params[:id])
    letter.update(letter_params)
    redirect_to admin_letter_path(letter.genre_id)
  end

  def destroy
    letter=Letter.find(params[:id])
    letter.destroy
    redirect_to admin_letter_path(letter.genre_id)
  end



  private

  def letter_params
    params.require(:letter).permit(:name,:genre_id)
  end

end