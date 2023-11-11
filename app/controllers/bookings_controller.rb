class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @num_of_passengers = params[:passenger_count]
  end


  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_id)
  end

end
