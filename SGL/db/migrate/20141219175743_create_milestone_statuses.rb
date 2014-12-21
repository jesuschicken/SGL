class CreateMilestoneStatuses < ActiveRecord::Migration
  def change
    create_table :milestone_statuses do |t|
      t.string :milestone_status_name

      t.timestamps
    end
  end
end
