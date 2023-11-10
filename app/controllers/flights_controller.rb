class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |u| [u.location , u.id] }

    return if search_params.empty?

    @available_flights = find_available_flights
  end

  def find_available_flights

    return [] unless params[:origin_id].present?

    if params[:origin_id] == params[:destination_id]
      flash[:alert] = "Please choose two different origin and destination locations!"
      return []
    else
      departure_date = Date.parse(params[:departure_time])
      Flight.where("DATE(departure_time) = ?", departure_date)
            .where(origin_id: params[:origin_id],
                   destination_id: params[:destination_id])
    end

  end

  private

  def search_params
    params.permit(:origin_id, :destination_id, :departure_time)
  end
end
