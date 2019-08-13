class PhoneNumber < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates_inclusion_of :number, in: 1111111111..9999999999

  def self.create_random
    PhoneNumber.create(number: rand(1111111111..9999999999))
  end
end
