class UsersController < ApplicationController
  has_many :cohorts
  def new
    @user = User.new

  end

  def create

    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit

  end

  def show
    @user = User.find(params[:id])
  end

  def index
  @users = User.all
  end

  def admin
  @admins = User.where(admin_priv: 1).order(:last_name)
  end

  def instructors
  @instructors = User.where(admin_priv: 0).order(:last_name)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :age, :education, :password, :password_confirmation)
    end
end
