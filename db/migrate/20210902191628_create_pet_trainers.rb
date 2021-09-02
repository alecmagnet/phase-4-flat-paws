class CreatePetTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_trainers do |t|
      t.pet :belongs_to
      t.trainer :belongs_to

      t.timestamps
    end
  end
end
