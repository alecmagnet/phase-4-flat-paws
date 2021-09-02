class SheltersController < ApplicationController
	wrap_parameters format: []
	rescue_from ActiveRecord::RecordInvalid, with: :error_message

	def index
		render json: Shelter.all
	end

	def show
		render json: Shelter.find(params[:id])
	end

	private

	def error_message(invalid)
		render json: { errors: invalid.record.errors }, status: :unprocessable_entity
	end

end
