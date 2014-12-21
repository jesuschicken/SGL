class CreateMilestoneTypes < ActiveRecord::Migration
  def change
    create_table :milestone_types do |t|
      t.string :milestone_type_name

      t.timestamps
    end
  end
end
