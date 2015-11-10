json.array!(@courses) do |course|
  json.extract! course, :id, :challenge_id, :pin, :name
  json.url course_url(course, format: :json)
end
