class CreateBufetes < ActiveRecord::Migration
  def change
    create_table :bufetes do |t|
      t.string :bufete_rut
      t.string :bufete_name
      t.string :bufete_address_street
      t.integer :bufete_address_number
      t.integer :bufete_address_floor
      t.string :bufete_office_number
      t.integer :city_id
      t.string :bufete_first_phone
      t.string :bufete_second_phone
      t.string :bufete_email
      t.boolean :bufete_active

      t.timestamps
    end
  end
end
