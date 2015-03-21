class LocationsController < ApplicationController

	def retrieve
	end

	def show
		@locaion = Location.find(params[:id])
		render :template => "locations/show"
	end

end