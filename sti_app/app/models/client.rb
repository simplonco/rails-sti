class Client < ActiveRecord::Base
	belongs_to :banker
	self.inheritance_column = :situation

	scope :poors, -> { where(situation: 'Poor') }
	scope :mediums, -> { where(situation: 'Medium') }
	scope :riches, -> { where(situation: 'Rich') }
end
