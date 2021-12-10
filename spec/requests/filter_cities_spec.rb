require 'rails_helper'

RSpec.describe "FilterCities", type: :request do
  describe "GET /index" do
    let!(:state) { create(:state) }
    let!(:cities) { create_list(:city, 5) }

    it 'Return all cities without params' do
      expect(cities.count).to eq(5)
    end
  end

  describe "GET /index with params" do
    let!(:state) { create(:state) }
    let!(:url) { "/filter_cities" }
    let!(:valid_params) { { city: { name: '2' } , state: { id: 2 } } }

    it 'Return cities with params' do
      get url, params: valid_params

      expect(response).to have_http_status(200)
    end
  end
end
