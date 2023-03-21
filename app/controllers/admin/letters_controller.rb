class Admin::LettersController < ApplicationController
  def index
    @genres=Genre.all

  end

  def show
    @letters=Letter.where(genre_id: 1)
  end


  def edit
  end

  def create
    letter=Letter.new(letter_params)
    letter.save
    redirect_to admin_letter_path(letter.genre_id)
  end

  def update
  end

  def destroy
  end



  private

  def letter_params
    params.permit(:name,:genre_id)
  end

end