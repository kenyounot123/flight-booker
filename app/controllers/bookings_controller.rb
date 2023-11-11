class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @num_of_passengers = params[:passenger_count]
    build_passengers
  end

  def create
    @flight = Flight.find(booking_params[:flight_id])
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def build_passengers
    @num_of_passengers.to_i.times { @booking.passengers.build } unless @num_of_passengers.to_i.zero?
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end