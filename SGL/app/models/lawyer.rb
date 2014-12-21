class Lawyer < ActiveRecord::Base
	belongs_to :specialty
	belongs_to :people
	belongs_to :resume
	has_many :bufete_lawyers
	has_many :bufetes, through: :bufete_lawyers
	has_many :lawyer_legal_affairs
	has_many :legal_affairs, through: :lawyer_legal_affairs
end
