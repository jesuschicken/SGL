class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.integer :person_id
      t.integer :specialty_id
      t.integer :resume_id

      t.timestamps
    end
  end
end
