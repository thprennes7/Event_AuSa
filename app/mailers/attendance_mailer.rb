class AttendanceMailer < ApplicationMailer

  default from: 'no-reply@monsite.fr'

  def join_event(attendance)
    @attendance = Attendance.user
    @creator = Event.sample.all.user
    @url  = 'http://monsite.fr/login'
    mail(to: @creator.email, subject: 'Un nouveaux participant à ton évenement !')
  end
end
