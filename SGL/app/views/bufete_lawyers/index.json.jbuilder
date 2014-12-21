json.array!(@bufete_lawyers) do |bufete_lawyer|
  json.extract! bufete_lawyer, :id, :bufete_id, :lawyer_id, :bufete_lawyer_is_active
  json.url bufete_lawyer_url(bufete_lawyer, format: :json)
end
