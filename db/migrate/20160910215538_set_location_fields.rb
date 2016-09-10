class SetLocationFields < ActiveRecord::Migration
  def change
  	add_column :bars, :latitude, :float
  	add_column :bars, :longitude, :float
  	add_column :bars, :city, :string
  	add_column :bars, :country, :string
  	add_column :bars, :formatted_address, :string
  	add_column :bars, :state, :string
  end
end
