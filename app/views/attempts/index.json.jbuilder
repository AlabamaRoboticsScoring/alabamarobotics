json.array!(@attempts) do |attempt|
  json.extract! attempt, :id, :team_id, :course_id, :points, :completion_time, :judge_name
  json.url attempt_url(attempt, format: :json)
end
