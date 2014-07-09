json.extract! @team, :id, :name, :logo

json.schedule @team.games do |game|
  json.id game.id
  json.date game.date
  json.opponent do
    if game.away == @team.id
      json.partial! "teams/team", team: game.team(game.home)
    else
      json.partial! "teams/team", team: game.team(game.away)
    end
  end
end