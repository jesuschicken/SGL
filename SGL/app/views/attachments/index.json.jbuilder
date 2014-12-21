json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :legal_affair_id, :person_id, :integer, :attachment_route, :attachment_name, :attachment_description
  json.url attachment_url(attachment, format: :json)
end
