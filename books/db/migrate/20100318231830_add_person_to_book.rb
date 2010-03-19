class AddPersonToBook < ActiveRecord::Migration
  def self.up
    add_column(:books, :person_id, :integer)
  end

  def self.down
    remove_column(:books, :person_id)
  end
end
