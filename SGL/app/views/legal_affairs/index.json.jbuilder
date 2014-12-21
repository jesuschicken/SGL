json.array!(@legal_affairs) do |legal_affair|
  json.extract! legal_affair, :id, :bufete_id, :status_id, :sub_type_id, :legal_affair_name, :legal_affair_description, :legal_affair_begin_date, :legal_affair_end_date
  json.url legal_affair_url(legal_affair, format: :json)
end
