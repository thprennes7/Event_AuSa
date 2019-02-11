class AttendanceMailer < ApplicationMailer

  default from: 'no-reply@monsite.fr'

  def join_event(attendance)
    @user = attendance.user
    @event = attendance.event
    @creator = @event.user
    @url  = 'http://monsite.fr/login'
    mail(to: @creator.email, subject: 'Un nouveaux participant à ton évenement !')
  end
end
