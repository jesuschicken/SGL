class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :person_rut
      t.string :person_names
      t.string :person_paternal_surename
      t.string :person_maternal_surename
      t.date :person_birth_date
      t.integer :gender_id
      t.integer :marital_status_id
      t.string :person_address_street
      t.integer :person_address_number
      t.string :person_address_apartment
      t.integer :city_id
      t.string :person_phone
      t.string :person_cellphone

      t.timestamps
    end
  end
end
