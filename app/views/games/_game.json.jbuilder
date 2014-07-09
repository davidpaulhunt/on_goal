json.game do
  json.id game.id
  json.date game.date
  json.home_team do
    json.partial! 'teams/team', team: game.team(game.home)
  end
  json.away_team do
    json.partial! 'teams/team', team: game.team(game.away)
  end
end