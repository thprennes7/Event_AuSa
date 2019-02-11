class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :admin, class_name: "User"

  validates :datetime,
  presence: true
  validates :duration,
  presence: true,
  numericality: { greater_than_or_equal_to: 1 }
  validates :title,
  presence: true,
  lenght: {minimun: 1, maximun: 140}
  validates :description,
  presence: true,
  lenght: {minimun: 1, maximun: 1000}
  validates :price,
  numericality: { greater_than_or_equal_to: 1..1000}
  validates :location, presence: true
end
