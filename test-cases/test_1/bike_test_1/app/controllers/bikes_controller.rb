class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
   @bike = current_user.bikes.new(bike_params)
    if @bike.save
      name = @bike.name
      redirect_to bikes_path
      flash[:notice] = "#{name} created"
    else
      render 'new'
      flash[:error] = "Unable to create bike. Please try again"
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update bike_params
    if @bike.save
      flash[:notice] = "Your bike was updated succesfully"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

    def bike_params
      params.require(:bike).permit(:name, :delete)
    end

end
