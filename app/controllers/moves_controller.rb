class MovesController < ApplicationController

	def index
		@moves = Move.all
    render :template => "moves/index"
	end

	def show
		@move = Move.find(params[:id])
      	render :template => "moves/show"
	end

	def new
  	@move = Move.new
    render :template => "moves/new"
  	end

  def create
  	 @move = Move.new(move_params)
  	 if @move.save
     	redirect_to moves_path(@move.id)
     else
        render :template => "moves/new"
     end
  end

  def edit
    @item = Move.find(params[:id])
    render :template => "moves/edit"
  end

  def update
      @move = Move.find(params[:id])
      if @move.update(move_params)
      redirect_to move_path
      else
      render :template => "moves/edit"
      end
  end

  def destroy
        Move.find(params[:id]).destroy!
        redirect_to moves_path
  end
  
  def move_params
    params.require(:move).permit!
  end

end