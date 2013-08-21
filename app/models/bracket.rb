class Bracket < ActiveRecord::Base
     belongs_to :tournament
     belongs_to :age_group
     #has_many :teams, foreign_key: => :age_group
     #has_many :home_games, foreign_key: :home_team_id, class_name: "Game"
end
