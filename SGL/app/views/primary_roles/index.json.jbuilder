json.array!(@primary_roles) do |primary_role|
  json.extract! primary_role, :id, :role_name
  json.url primary_role_url(primary_role, format: :json)
end
