class ChirpsController < ApplicationController

	def index
		@chirps = Chirp.all 
	end

	def show
		@chirp = Chirp.find(params[:id])
	end

	def new
		@chirp = Chirp.new
  end

  def create
  	@chirp = Chirp.new(chirp_params)
  	@chirp.user = current_user
  	if @chirp.save
  		redirect_to chirps_path, notice: "The chirp was saved!"
  	else
  		flash.now[:alert] = "Uh-oh, something went wrong ... "
  		render action: :new
  	end
  end

  def chirp_params
  	params.require(:chirp).permit(:status)
  end

  def edit
  	@chirp = Chirp.find(params[:id])
  end

  def update
  	@chirp = Chirp.find_by_id(params[:id])
  	if @chirp.update(chirp_params)
  		redirect_to chirps_path, notice: "The chirp was updated!"
  	else
  		flash.now[:alert] = "Uh-oh, something went wrong ... "
  		render action: :edit
  	end
  end

  def destroy
  	@chirp = Chirp.find(params[:id])
  	if @chirp.destroy
  		redirect_to chirps_path, notice: "The chirp was deleted"
  	else
  		redirect_to chirps_parth, alert: "Uh-oh. Chirp not deleted."
  	end
  end


end
