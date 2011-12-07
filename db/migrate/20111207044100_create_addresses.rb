class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :postal_code
      t.references :state
      t.references :city
      t.string :neighbourhood, :limit => 50
      t.string :address, :limit => 50
      t.integer :number
      t.boolean :without_number
      t.string :complement, :limit => 50
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      
      t.timestamps
    end
    add_index :addresses, :state_id
    add_index :addresses, :city_id
  end
end
