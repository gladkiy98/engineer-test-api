require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  describe 'simple creating models' do
    it 'has none to begin with' do
      expect(PhoneNumber.count).to eq 0
    end

    it 'has one after adding one' do
      PhoneNumber.create(number: 111_111_111_1)
      expect(PhoneNumber.count).to eq 1
    end
  end

  describe 'check validations' do
    it '' do
      expect(PhoneNumber.create(number: '')).not_to be_valid
    end

    it '' do
      expect(PhoneNumber.create(number: 111_111_111_1)).to be_valid
    end

    it '' do
      PhoneNumber.create(number: 111_111_111_1)
      expect(PhoneNumber.create(number: 111_111_111_1)).not_to be_valid
    end
  end
end
