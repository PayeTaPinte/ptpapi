class Bar < ActiveRecord::Base
  geocoded_by :address do |bar, result|
    if result.first
      bar.latitude = result.first.latitude
      bar.longitude = result.first.longitude
      bar.city = result.first.city
      bar.country = result.first.country
      bar.formatted_address = result.first.address
      bar.state = result.first.state
    end
  end

  after_validation :geocode
end
