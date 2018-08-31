class UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update]
  def new
    @user = User.new
      end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      p 'user successfully updated'
      redirect_back(fallback_location: users_path)
    else
      p 'update failed'
      redirect_back(fallback_location: users_path)
    end
end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def admin
    @users = User.all
    @admins = User.where(admin_priv: 1).order(:last_name)
  end

  def instructors
    @users = User.all
    @instructors = User.where(admin_priv: 0).order(:last_name)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :age, :education, :salary, :admin_priv, :password, :password_confirmation)
    end

  def find_user
    @user = User.find(params[:id])
 end
end
