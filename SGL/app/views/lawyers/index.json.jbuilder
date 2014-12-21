json.array!(@lawyers) do |lawyer|
  json.extract! lawyer, :id, :person_id, :specialty_id, :resume_id
  json.url lawyer_url(lawyer, format: :json)
end
