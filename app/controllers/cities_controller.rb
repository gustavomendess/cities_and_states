class CitiesController < ApplicationController
  def index
    @states = State.all
    @cities = CitiesFetcher.new.filter(params)

    @searched_name = params[:city][:name].strip if params[:city].present?
    @searched_state = State.find(params[:state][:id]) if params[:state].present? && params[:state][:id].present?
  end
end
