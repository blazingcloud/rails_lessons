class CreateHobbyOrigins < ActiveRecord::Migration
  def self.up
    create_table :hobby_origins do |t|
      t.integer :person_id
      t.integer :hobby_id
      t.text :story
      t.date :started_on

      t.timestamps
    end
  end

  def self.down
    drop_table :hobby_origins
  end
end
