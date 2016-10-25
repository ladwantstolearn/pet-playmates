class ChangeCountryInProfile < ActiveRecord::Migration[5.0]
  def change
  	remove_column :profiles, :county, :string
  	add_column :profiles, :country, :string
  end
end
