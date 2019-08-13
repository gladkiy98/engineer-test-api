class PhoneNumber < ApplicationRecord
  validates :number, presence: true
  validates :number, uniqueness: true
  validate :custom_validation

  def self.create_random
    PhoneNumber.create(number: rand(1111111111..9999999999))
  end

  private

  def custom_validation
    num = number.scan(/\d/).join('').to_i
    if num < 1111111111 || num > 9999999999
      errors.add :number, 'Wrong number'
    end
  end
end
