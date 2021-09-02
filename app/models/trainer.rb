class Trainer < ApplicationRecord
	has_many :pet_trainers
	has_many :pets, through: :pet_trainers
end
