class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :label
      t.integer :house_number
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
