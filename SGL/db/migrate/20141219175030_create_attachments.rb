class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :legal_affair_id
      t.string :person_id
      t.string :integer
      t.string :attachment_route
      t.string :attachment_name
      t.text :attachment_description

      t.timestamps
    end
  end
end
