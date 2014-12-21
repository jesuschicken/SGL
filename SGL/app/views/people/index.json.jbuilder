json.array!(@people) do |person|
  json.extract! person, :id, :person_rut, :person_names, :person_paternal_surename, :person_maternal_surename, :person_birth_date, :gender_id, :marital_status_id, :person_address_street, :person_address_number, :person_address_apartment, :city_id, :person_phone, :person_cellphone
  json.url person_url(person, format: :json)
end
