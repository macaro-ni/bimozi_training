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
    @user.update!(user_params)
    redirect_to users_my_page_path
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
