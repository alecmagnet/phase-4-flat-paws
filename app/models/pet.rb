class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :pet_trainers
	has_many :trainers, through: :pet_trainers

  # validates :name, presence: true
  # validates :breed, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :everything_is_present

  def everything_is_present
    if(breed.length < 1 && name.length < 1)
      errors.add(:breed, message: "breed must exist") 
      errors.add(:name, message: "name must exist") 
    end
  end
end
