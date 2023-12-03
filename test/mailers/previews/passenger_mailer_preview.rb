# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def confirmation_email
    booking = Booking.last
    PassengerMailer.with(booking: booking).confirmation_email
  end
end
