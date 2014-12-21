class BufeteLawyer < ActiveRecord::Base
	belongs_to :bufete
	belongs_to :lawyer
end
