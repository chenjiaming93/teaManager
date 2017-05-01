class Player < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
	has_many :game_stats,foreign_key: "player_id",class_name: "game_stat"
	def games
		self.game_stats.map{|x| x.game}
	end
	def full_name
		self.first_name+" "+self.last_name
	end
end
