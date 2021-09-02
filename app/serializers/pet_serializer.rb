class PetSerializer < ActiveModel::Serializer
  attributes :id, :breed, :name, :age, :weight, :gps_chip

  belongs_to :shelter

end
