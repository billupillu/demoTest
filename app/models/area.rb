class Area < ActiveRecord::Base
	belongs_to :city
	has_many :priest_users

	scope :cityareas, lambda { |a|	where(["city_id = ?", a]) }
	scope :doareaid, lambda { |ar| where(["name = ?", ar]) }
end
