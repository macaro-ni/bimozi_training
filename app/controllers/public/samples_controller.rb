class Public::SamplesController < ApplicationController
 before_action :authenticate_user!



 def index
   @genres=Genre.all
   @letter=Letter.new
 end

  def show
    @genre=Genre.find(params[:id])
    @letters=Letter.where(genre_id: @genre.id)
    # 以下はgenre5の場合使用
    # @user=User.find(current_user.id)
    # @letter=Letter.new
  end

  def create
   entered_letter=Letter.new(entered_letter_params)
    ##追加した文字が既に登録済みかの判別
    same_letter=Letter.find_by(name: entered_letter.name)
    if same_letter.present? && same_letter.user_id == current_user.id
     ##current_userが同じ文字を以前に登録済みの場合、同じ名前のものを取り出す
      redirect_to new_sample_practice_path(same_letter.id)
    else
      ##未登録の場合、save
      entered_letter.user_id=current_user.id
      entered_letter.save
      redirect_to new_sample_practice_path(entered_letter.id)
    end
  end

  def destroy
   letter=Letter.find(params[:id])
   if letter.user_id == current_user.id
     letter.destroy
     redirect_to sample_path(letter.genre_id)
   end
  end




 private
  def entered_letter_params
   params.require(:letter).permit(:name,:genre_id)
  end


end
