class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def bookings
    @user = User.find(params[:id])
  end

  def rentals
    @user = User.find(params[:id])
  end
end