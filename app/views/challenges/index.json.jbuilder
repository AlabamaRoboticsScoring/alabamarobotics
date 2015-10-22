json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :name, :duration?
  json.url challenge_url(challenge, format: :json)
end
