class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to users_path, notice: "#{@user.name} is successfully signed up."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if User.find(id=params[:id]).update user_params
      redirect_to users_path, notice: "User updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    User.find(  id=params[:id]).destroy
    redirect_to users_path, alert: "User deleted."
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :userNm, :email, :password, :passowrd_confirmation)
  end
end
