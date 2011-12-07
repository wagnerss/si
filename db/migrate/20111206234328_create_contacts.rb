class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :telephone
      t.string :ip
      t.string :email
      t.string :subject
      t.string :message
      t.timestamps
    end
  end
end
