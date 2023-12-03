class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @booking = params[:booking]
    @url = booking_url(@booking)
    mail to: @booking.passengers.pluck(:email),
         subject: "Thank you for booking our flight!"
  end
end
