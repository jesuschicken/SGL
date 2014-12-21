json.array!(@milestone_statuses) do |milestone_status|
  json.extract! milestone_status, :id, :milestone_status_name
  json.url milestone_status_url(milestone_status, format: :json)
end
