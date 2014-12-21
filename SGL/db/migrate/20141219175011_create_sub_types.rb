class CreateSubTypes < ActiveRecord::Migration
  def change
    create_table :sub_types do |t|
      t.integer :type_id
      t.string :subtype_name

      t.timestamps
    end
  end
end
