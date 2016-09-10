class ExtendBarModel < ActiveRecord::Migration
  def change
  	add_column :bars, :isOn, :boolean
  	add_column :bars, :isCb, :boolean
  	add_column :bars, :start_happy, :date
  	add_column :bars, :end_happy, :date
  	add_column :bars, :price_happy, :float
  	add_column :bars, :has_happy, :boolean
  	add_column :bars, :address, :string
  	add_column :bars, :price, :float
  	add_column :bars, :activities, :json
    add_column :bars, :location, :json
  end
end
