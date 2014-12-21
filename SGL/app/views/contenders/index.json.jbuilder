json.array!(@contenders) do |contender|
  json.extract! contender, :id, :person_id, :legal_affair_id
  json.url contender_url(contender, format: :json)
end
