class BufeteClientLegalAffair < ActiveRecord::Base
	belongs_to :bufete_client
	belongs_to :legal_affair
end
