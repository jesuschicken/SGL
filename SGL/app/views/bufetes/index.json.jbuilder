json.array!(@bufetes) do |bufete|
  json.extract! bufete, :id, :bufete_rut, :bufete_name, :bufete_address_street, :bufete_address_number, :bufete_address_floor, :bufete_office_number, :city_id, :bufete_first_phone, :bufete_second_phone, :bufete_email, :bufete_active
  json.url bufete_url(bufete, format: :json)
end
