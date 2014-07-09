class Game < ActiveRecord::Base

  def team(team_id)
    Team.find(team_id)
  end
end
