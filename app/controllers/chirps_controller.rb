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


end
