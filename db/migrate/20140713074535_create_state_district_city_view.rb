class CreateStateDistrictCityView < ActiveRecord::Migration

  def up
    self.connection.execute %Q( CREATE OR REPLACE VIEW state_district_city_view AS
      SELECT cities.id AS id, states.name AS state, districts.name AS district, cities.name AS city
      FROM states
      INNER JOIN districts ON districts.state_id = states.id
      INNER JOIN cities ON cities.district_id = districts.id
    )
  end

  def down
    self.connection.execute "DROP VIEW IF EXISTS state_district_city_view;"
  end

end
