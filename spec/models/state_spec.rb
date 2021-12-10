require 'rails_helper'

RSpec.describe State, type: :model do
  it { should have_many(:cities) }
  it { is_expected.to validate_presence_of(:name) }

  describe 'Test State model' do
    it "Is valid with valid attributes (name)" do
      expect(State.create!(name: 'Santa Catarina')).to be_valid
    end
  end
end
