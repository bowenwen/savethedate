class GuestMailer < ApplicationMailer
  default from: ENV['FROM_EMAIL'], reply_to: ENV['CONTACT_EMAIL']

  def confirmation_email(guest)
    @guest = guest
    mail(
      to: guest.name_with_email,
      subject: "#{I18n.t(:wedding_name)}: Save-the-Date Confirmation"
    )
  end

  def welcome_back_email(guest)
    @guest = guest
    mail(
      to: guest.name_with_email,
      subject: "#{I18n.t(:wedding_name)}: Your Save-the-Date"
    )
  end
end
