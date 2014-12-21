class CreateContenders < ActiveRecord::Migration
  def change
    create_table :contenders do |t|
      t.integer :person_id
      t.integer :legal_affair_id

      t.timestamps
    end
  end
end
