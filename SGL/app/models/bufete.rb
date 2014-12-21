class Bufete < ActiveRecord::Base
	belongs_to :city
	has_many :legal_affairs
	has_many :bufete_clients
	has_many :people, through: :bufete_clients
	has_many :bufete_lawyers
	has_many :lawyers, through: :bufete_lawyers
end
