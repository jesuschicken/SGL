class Contender < ActiveRecord::Base
	belongs_to :person
	belongs_to :legal_affair
end
