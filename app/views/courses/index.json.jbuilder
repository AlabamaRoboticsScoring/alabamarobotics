json.array!(@courses) do |course|
  json.extract! course, :id, :challenge_id, :pin
  json.url course_url(course, format: :json)
end
