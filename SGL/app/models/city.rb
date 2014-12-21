class City < ActiveRecord::Base
	belongs_to :state
	has_many :people
	has_many :bufetes
end
