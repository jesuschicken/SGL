class CreateBufeteClientLegalAffairs < ActiveRecord::Migration
  def change
    create_table :bufete_client_legal_affairs do |t|
      t.integer :bufete_client_id
      t.integer :legal_affair_id

      t.timestamps
    end
  end
end
