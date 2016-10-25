class AddPictureToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :picture, :string
  end
end
