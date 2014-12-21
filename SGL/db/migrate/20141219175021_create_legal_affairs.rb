class CreateLegalAffairs < ActiveRecord::Migration
  def change
    create_table :legal_affairs do |t|
      t.integer :bufete_id
      t.integer :status_id
      t.integer :sub_type_id
      t.string :legal_affair_name
      t.text :legal_affair_description
      t.date :legal_affair_begin_date
      t.date :legal_affair_end_date

      t.timestamps
    end
  end
end
