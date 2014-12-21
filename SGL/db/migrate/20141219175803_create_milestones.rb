class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :legal_affair_id
      t.integer :milestone_status_id
      t.integer :milestone_type_id
      t.datetime :milestone_date_in
      t.datetime :milestone_date_out
      t.text :milestone_log

      t.timestamps
    end
  end
end
