class Game < ActiveRecord::Base
	has_many :game_stats,foreign_key: "game_id",class_name: "game_stat"
	def players
		self.game_stats.map{|x| x.player}
	end
end
