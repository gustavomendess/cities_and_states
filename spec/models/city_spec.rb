require 'rails_helper'

RSpec.describe City, type: :model do
  it { should belong_to(:state) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:state_id) }

  describe 'Test City model' do
    it "Is valid with valid attributes (name and state_id)" do
      state = State.create!(name: 'Santa Catarina')
      expect(City.new(name: 'Criciúma', state_id: state.id)).to be_valid
    end

    it "Is invalid without attributes (state_id)" do
      expect(City.new(name: 'Criciúma')).not_to be_valid
    end

    it "Is invalid with invalid attributes (state_id)" do
      expect(City.new(name: 'Criciúma', state_id: '10')).not_to be_valid
    end
  end
end
