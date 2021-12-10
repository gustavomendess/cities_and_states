require "rails_helper"

RSpec.describe "Routes", :type => :routing do
  it "route '/' to default page, filter_cities#index" do
    expect(get("/")).to route_to("filter_cities#index")
  end
end