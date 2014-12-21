class LawyerLegalAffair < ActiveRecord::Base
	belongs_to :legal_affair
	belongs_to :lawyer
end
