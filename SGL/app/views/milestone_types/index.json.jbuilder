json.array!(@milestone_types) do |milestone_type|
  json.extract! milestone_type, :id, :milestone_type_name
  json.url milestone_type_url(milestone_type, format: :json)
end
