class Game::Coach < ApplicationRecord

  has_many :team_coach_join, class_name: 'Game::CoachTeamJoin', dependent: :destroy, inverse_of: :game_coaches
  has_many :teams, through: :team_coach_join

end