class Milestone < ActiveRecord::Base
	belongs_to :legal_affair
	belongs_to :milestone_status
	belongs_to :milestone_type
	
	
end
