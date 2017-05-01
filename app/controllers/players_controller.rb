class PlayersController < ApplicationController
	def player_params
      params.require(:player).permit(:first_name,:last_name,:avatar,:weight,:feet,:inch,:age,:dob)
    end
	def index
		@players=Player.find(:all)
	end

	def show
		@player=Player.find(params[:id])
	end

	def create
		player=Player.create(params[:player])
		redirect_to player_path(player)
	end

	def new
		@player=Player.new
	end

	def edit
		@player=Player.find(paramsp[:id])
	end

	def update
		player=Player.find(paramsp[:id])
		player.update_attributes(params[:player])
		redirect_to player_path(player)
	end


end
