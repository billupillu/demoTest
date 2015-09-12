class PriestUser < ActiveRecord::Base
	belongs_to :area

	scope :soting, lambda { order("created_at DESC")  }
end
