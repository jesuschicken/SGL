class Person < ActiveRecord::Base
	belongs_to :city
	belongs_to :marital_status
	belongs_to :gender
	has_many :bufete_clients
	has_many :bufetes, through: :bufete_clients
	has_many :lawyers
	has_many :attachments
	has_many :contenders
	has_many :legal_affairs, through: :contenders
  has_many :users
end
