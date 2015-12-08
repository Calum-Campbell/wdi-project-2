class BookingsController < ApplicationController
  # respond_to :html, :xml, :json
  
  before_action :find_bike

  def index
    @bookings = Booking.upcoming(@bike)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(bike_id: @bike.id)
  end

  def create
    @booking =  current_user.bookings.new(booking_params)   
    @booking.bike = @bike
    if @booking.save
      redirect_to bookings_user_path(id: current_user.id, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to bike_bookings_path(@bike)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    # @booking.bike = @bike

    if @booking.update(booking_params)
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to bike_bookings_path(@bike)
      end
    else
      render 'edit'
    end
  end

  private

    def booking_params
      params.require(:booking).permit(:bike_id, :start_time, :length)
    end

    def save booking
      if @booking.save
          flash[:notice] = 'booking added'
          redirect_to bike_booking_path(@bike, @booking)
        else
          render 'new'
        end
    end

    def find_bike
      if params[:bike_id]
        @bike = Bike.find_by_id(params[:bike_id])
      end
    end

end
