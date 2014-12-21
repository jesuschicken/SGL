class CreateBufeteLawyers < ActiveRecord::Migration
  def change
    create_table :bufete_lawyers do |t|
      t.integer :bufete_id
      t.integer :lawyer_id
      t.boolean :bufete_lawyer_is_active

      t.timestamps
    end
  end
end
