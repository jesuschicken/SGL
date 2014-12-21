json.array!(@statuses) do |status|
  json.extract! status, :id, :status_name
  json.url status_url(status, format: :json)
end
