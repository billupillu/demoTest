class City < ActiveRecord::Base
	has_many :areas
	scope :sort, lambda {order('position ASC')}
	scope :loid, lambda { |a| where(["name = ?", a]) }
end
