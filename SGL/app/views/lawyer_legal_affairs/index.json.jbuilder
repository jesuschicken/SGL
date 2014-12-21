json.array!(@lawyer_legal_affairs) do |lawyer_legal_affair|
  json.extract! lawyer_legal_affair, :id, :legal_affair_id, :lawyer_id
  json.url lawyer_legal_affair_url(lawyer_legal_affair, format: :json)
end
