class Carte < ActiveRecord::Base
	belongs_to :taste, polymorphic: true
end
