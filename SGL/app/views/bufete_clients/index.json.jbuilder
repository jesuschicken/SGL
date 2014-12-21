json.array!(@bufete_clients) do |bufete_client|
  json.extract! bufete_client, :id, :person_id, :bufete_id, :bufete_client_is_active
  json.url bufete_client_url(bufete_client, format: :json)
end
