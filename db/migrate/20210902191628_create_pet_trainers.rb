class CreatePetTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_trainers do |t|
      t.belongs_to :pet
      t.belongs_to :trainer

      t.timestamps
    end
  end
end
