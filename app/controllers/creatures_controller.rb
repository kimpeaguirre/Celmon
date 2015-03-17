class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    render :template => "creatures/index"
  end

  def show
      @creature = Creature.find(params[:id])
      render :template => "creatures/show"
  end

  def new
  	@creature = Creature.new
    render :template => "creatures/new"
  end

  def create
  	 @creature = Creature.new(creature_params)
  	 if @creature.save
     	redirect_to creatures_path(@creature.id)
     else
        render :template => "creatures/new"
     end
  end

  def edit
    @item = Creature.find(params[:id])
    render :template => "creatures/edit"
  end

  def update
      @creature = Creature.find(params[:id])
      if @creature.update(creature_params)
      redirect_to creature_path
      else
      render :template => "creatures/edit"
      end
  end

  def destroy
        Creature.find(params[:id]).destroy!
        redirect_to creatures_path
  end
  
  def creature_params
    params.require(:creature).permit!
  end
end
