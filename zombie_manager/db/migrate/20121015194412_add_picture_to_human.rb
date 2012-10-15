class AddPictureToHuman < ActiveRecord::Migration
  def change
    add_column :humans, :picture, :string
  end
end
