class UsersController < ApplicationController


  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      redirect_to :back
    end
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    puts params.fetch(:role)
    user.update_attributes(role: params.fetch(:role))
    puts "user role updated"
    #respond_to do |format|
    #  if @user.save
    #    format.html { redirect_to 'users/index' }
    #    format.js   {}
    #    format.json {}
    #  end
    #end
  end

  def assign_roles
    @users = User.all
    @roles = ["", "milk drinker", "cookie dipper", "cookie counter"]

  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :role)
  end

end
