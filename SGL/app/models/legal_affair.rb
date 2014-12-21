class LegalAffair < ActiveRecord::Base
	belongs_to :sub_type
	belongs_to :bufete
	belongs_to :status
	has_many :attachments
	has_many :milestones
	has_many :bufete_client_legal_affairs
	has_many :bufete_clients, through: :bufete_client_legal_affairs
	has_many :contenders
	has_many :people, through: :contenders
	has_many :lawyer_legal_affairs
	has_many :lawyers, through: :lawyer_legal_affairs
end
