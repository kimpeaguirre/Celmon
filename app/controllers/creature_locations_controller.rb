class CreaturesLocationsController < ApplicationController

	def show
		@creatureloc = CreatureLocation.find(params[:id])
		render :template => "creature_locations/show"
	end
	
end