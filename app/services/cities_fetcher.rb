class CitiesFetcher
  def filter(params)
    state_id = params[:state][:id] if params[:state].present?
    name = params[:city][:name].strip if params[:city].present?
    search_by = search_by(name, state_id)

    return all_cities if search_by.nil?

    search(search_by, name, state_id)
  end

  private

  def all_cities
    City.all
  end

  def search_by(name, state_id)
    return if state_id.nil? && name.nil?

    if state_id.present? && name.present?
      SearchTypes::BY_STATE_AND_NAME
    elsif state_id.present?
      SearchTypes::BY_STATE_ID
    elsif name.present?
      SearchTypes::BY_NAME
    end
  end

  def search(search_by, name, state_id)
    return all_cities if search_by.nil? && name.nil? && state_id.nil?

    if search_by == SearchTypes::BY_STATE_AND_NAME
      City.by_state_and_name(state_id, name)
    elsif search_by == SearchTypes::BY_NAME
      City.by_name(name)
    elsif search_by == SearchTypes::BY_STATE_ID
      City.by_state_id(state_id)
    end
  end
end