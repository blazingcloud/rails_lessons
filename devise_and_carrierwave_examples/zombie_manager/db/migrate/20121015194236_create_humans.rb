class CreateHumans < ActiveRecord::Migration
  def change
    create_table :humans do |t|
      t.string :blood_type
      t.string :height
      t.string :weight

      t.timestamps
    end
  end
end
