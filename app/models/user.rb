class User < ApplicationRecord
  has_many :attendances
  has_many :events, through :attendances, foreingn_key: 'admin_id'

end
