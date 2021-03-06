class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
       redirect_to root_path,  notice: "ユーザーを更新しました"
    else
       flash.now[:alert] = "グループ作成に失敗しました"
       render action: :edit
    end
  end

  private
   def user_params
    params.require(:user).permit(:name, :email)
   end
end
