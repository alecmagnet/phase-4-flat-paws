class PetTrainer < ApplicationRecord
	belongs_to :pet
	belongs_to :trainer 
end
