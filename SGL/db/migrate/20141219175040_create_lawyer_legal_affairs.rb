class CreateLawyerLegalAffairs < ActiveRecord::Migration
  def change
    create_table :lawyer_legal_affairs do |t|
      t.integer :legal_affair_id
      t.integer :lawyer_id

      t.timestamps
    end
  end
end
