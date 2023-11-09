class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |u| [u.location , u.id] }

    return if search_params.empty?

    @available_flights = find_available_flights
  end



  private

  def find_available_flights
    return unless params[:origin_id].present?

    [Flight.find_by(origin_id: params[:origin_id])]
  end

  def search_params
    params.permit(:origin_id, :destination_id, :departure_time)
  end
end
