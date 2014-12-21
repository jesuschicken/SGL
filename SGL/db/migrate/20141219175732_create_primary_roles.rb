class CreatePrimaryRoles < ActiveRecord::Migration
  def change
    create_table :primary_roles do |t|
      t.string :role_name

      t.timestamps
    end
  end
end
