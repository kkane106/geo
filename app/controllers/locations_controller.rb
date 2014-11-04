class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end

	def show
		@location = Location.find(params[:id])
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		if @location.save
			flash[:success]
			redirect_to @location
		else
			flash[:error]
			redirect_to 'new'
		end
	end

  private
  def location_params
  	params.require(:location).permit(:address, :latitude, :longitude)
  end
end

