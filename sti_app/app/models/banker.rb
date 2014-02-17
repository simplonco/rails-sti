class Banker < ActiveRecord::Base
	has_many :clients
	delegate :poors, :mediums, :riches, to: :clients
end
