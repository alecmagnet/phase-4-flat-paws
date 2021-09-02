class PetsController < ApplicationController
	wrap_parameters format: []
	rescue_from ActiveRecord::RecordInvalid, with: :error_message

	def index
		render json: Pet.all
	end

	def show
		render json: Pet.find(params[:id])
	end

	def create
		pet = Pet.create!(pet_params)
			render json: pet, status: :created
	# rescue ActiveRecord::RecordInvalid => invalid 
	# 		render json: { errors: invalid.record.errors }, status: :unprocessable_entity
	end
	
	def destroy
		pet = Pet.find_by(id: params[:id])
		if pet 
			pet.destroy 
			head :no_content
		else 
			render json: {error: "Pet is not found"}, status: :not_found
		end
	end

	def update
		pet = Pet.find_by(id: params[:id])
		pet.update(pet_params)
		render json: pet
	# rescue ActiveRecord::RecordInvalid => invalid 
	# 	render json: { errors: invalid.record.errors }, status: :not_found
	end

	private
	def pet_params
		params.permit(:breed, :name, :age, :weight, :gps_chip, :shelter_id) 
	end

	def error_message(invalid)
		render json: { errors: invalid.record.errors }, status: :unprocessable_entity
	end

end
