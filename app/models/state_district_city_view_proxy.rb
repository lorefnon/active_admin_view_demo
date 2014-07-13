class StateDistrictCityViewProxy < ActiveRecord::Base
  self.table_name = "state_district_city_view"
  self.primary_key = "id"

  def readonly?
    true
  end
end

