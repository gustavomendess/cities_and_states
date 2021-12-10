class CitiesFetcher
  def filter(params)
    return all_cities if blank_params?(params)

    state_id = params[:state][:id]
    name = params[:city][:name].strip

    search(name, state_id)
  end

  private

  def blank_params?(params)
    if params[:state].present? && params[:city].present?
      if params[:state][:id].empty? && params[:city][:name].empty?
        true
      else
        false
      end
    else
      true
    end
  end

  def all_cities
    City.all
  end

  def search(name, state_id)
    if state_id.present? && name.present?
      City.by_state_and_name(state_id, name)
    elsif state_id.present?
      City.by_state_id(state_id)
    elsif name.present?
      City.by_name(name)
    end
  end
end