class Parent < ActiveRecord::Base
	has_many :cartes, as: :taste
end
