class StateDistrictCityViewProxy < ActiveRecord::Base

  self.table_name = "state_district_city_view"

  def attributes
    { id: id, state: state, city: city, district: district }
  end

end

