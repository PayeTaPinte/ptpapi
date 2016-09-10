class SetLocationJsonValues < ActiveRecord::Migration
  def change
  	change_column :bars, :location, :json, default: { 'latitude' => nil, 'longitude' => nil, 'zipcode' => nil, 'country' => nil, 'city' => nil, 'state' => nil, 'street_number' => nil, 'formatted_address' => nil }
  end
end
