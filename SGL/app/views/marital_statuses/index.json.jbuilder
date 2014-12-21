json.array!(@marital_statuses) do |marital_status|
  json.extract! marital_status, :id, :marital_status_name
  json.url marital_status_url(marital_status, format: :json)
end
