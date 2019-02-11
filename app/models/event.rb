class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :users, through: :attendances

  validates :start_date,
  presence: true
  validates :duration,
  presence: true,
  numericality: { greater_than_or_equal_to: 1 }
  validates :title,
  presence: true,
  length: {minimum: 1, maximum: 140}
  validates :description,
  presence: true,
  length: {minimum: 1, maximum: 1000}
  validates :price,
  numericality: { greater_than_or_equal_to: 1}
  validates :location, presence: true
end
