class City < ActiveRecord::Base
  belongs_to :district
  has_one :state, through: :district
end
