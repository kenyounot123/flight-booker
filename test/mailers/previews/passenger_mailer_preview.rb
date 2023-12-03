# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def confirmation_email
    booking = Booking.last
    booking.passengers.each do |passenger|
      PassengerMailer.with(booking: booking).confirmation_email(passenger)
    end
  end
end
