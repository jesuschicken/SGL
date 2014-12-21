class CreateBufeteClients < ActiveRecord::Migration
  def change
    create_table :bufete_clients do |t|
      t.integer :person_id
      t.integer :bufete_id
      t.boolean :bufete_client_is_active

      t.timestamps
    end
  end
end
