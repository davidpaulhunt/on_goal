class Team < ActiveRecord::Base
  has_one :staff

  def games
    Game.all.where("games.away = ? OR games.home = ?", id, id)
  end
end
