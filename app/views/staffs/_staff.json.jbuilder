json.staff do
  json.id staff.id
  json.team do
    json.partial! staff.team
  end
end