class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user=current_user

  end

  def edit
    @user=current_user

  end

  def update
    @user=current_user
    # userのupdateと同時にletterテーブルも作る
    letters_g5=Letter.where(genre_id: 5 , user_id: current_user.id)
    letters_g5.each do |letter|
      letter.delete
    end
    if @user.update!(user_params)
        @letter_name = @user.letters.build(genre_id: 5, name: @user.last_name + "　"+ @user.first_name, user_id: current_user.id)
        @letter_name_kana = @user.letters.build(name: @user.last_name_kana + "　" + @user.first_name_kana, genre_id: 5,user_id: current_user.id)
      @letter_address = @user.letters.build(name: @user.address, genre_id: 5,user_id: current_user.id)
    end
    if @user.save #&& @letter_name.save && @letter_name_kana.save && @letter_address.save
      redirect_to users_my_page_path
    end
  end

  def confirm

  end

  def withdrawal
      @user = current_user
      # is_deletedカラムをtrueに変更することにより削除フラグを立てる
      @user.update(is_deleted: true)
      reset_session
      flash[:notice] = "退会処理を実行いたしました"
      redirect_to root_path
  end



  private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :address)
  end

end
