class BufeteClient < ActiveRecord::Base
	belongs_to :person
	belongs_to :bufete
	has_many :bufete_client_legal_affairs
	has_many :legal_affairs, through: :bufete_client_legal_affairs
	
end
