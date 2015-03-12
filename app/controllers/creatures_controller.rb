class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    render :template => "creature/index"
  end

  def show
      @creature = Creature.find(params[:id])
      render :template => "creature/show"
  end

end
