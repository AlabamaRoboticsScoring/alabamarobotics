json.array!(@teams) do |team|
  json.extract! team, :id, :name, :members, :age_group, :school
  json.url team_url(team, format: :json)
end
