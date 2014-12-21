json.array!(@specialties) do |specialty|
  json.extract! specialty, :id, :specialty_name
  json.url specialty_url(specialty, format: :json)
end
