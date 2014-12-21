json.array!(@bufete_client_legal_affairs) do |bufete_client_legal_affair|
  json.extract! bufete_client_legal_affair, :id, :bufete_client_id, :legal_affair_id
  json.url bufete_client_legal_affair_url(bufete_client_legal_affair, format: :json)
end
