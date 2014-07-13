class State < ActiveRecord::Base
  has_many :districts
  has_many :cities, through: :districts
end
