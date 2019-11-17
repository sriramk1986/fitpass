class Course < ApplicationRecord
  belongs_to :studio
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
