class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @booking = params[:booking]
    @url = booking_url(@booking)
    mail to: @booking.passengers.pluck(:email),
         subject: "Confirmation email for #{@passenger.email}"
  end
end
