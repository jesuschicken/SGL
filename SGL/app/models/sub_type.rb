class SubType < ActiveRecord::Base
	belongs_to :type
	has_many :legal_affairs
end
