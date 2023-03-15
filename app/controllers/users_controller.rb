class UsersController < ApplicationController
  def new
    session[:current_time] = Time.now

    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id

      redirect_to root_path, notice: " Вы успешно зарегистрировались!"
    else
      flash.now[:alert] = "Вы неправильно заполнили поля формы регистрации"

      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :nickname, :header_color, :email, :password, :password_confirmation
    )
  end
end
