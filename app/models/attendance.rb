class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event


  after_create :send_participation

  def send_participation
    AttendanceMailer.join_email(self).deliver_now
  end
end
