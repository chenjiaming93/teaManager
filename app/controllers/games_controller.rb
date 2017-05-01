class GamesController < ApplicationController
	def game_params
      params.require(:game).permit(:opponent,:game_date,:score,:op_score,:comment)
    end
	def index
		@games=Game.find(:all)
	end

	def show
		@game=Game.find(params[:id])
	end

	def create
		game=Game.create(params[:Game])
		redirect_to game_path(game)
	end

	def new
		@game=Game.new
	end

	def edit
		@game=Game.find(paramsp[:id])
	end

	def update
		game=Game.find(paramsp[:id])
		game.update_attributes(params[:Game])
		redirect_to game_path(game)
	end

end
