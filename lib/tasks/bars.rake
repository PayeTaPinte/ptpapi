namespace :bars do
  task inport_bars_from_json: :environment do
  	file = File.read('bars.json')
  	bars_hashed = JSON.parse(file)
    Bar.destroy_all

  	bars_hashed.map do |bar|
      Bar.create(
        name: bar['name'],
        address: bar['address'],
        isCb: bar['isCb'],
        start_happy: bar['start_happy'],
        end_happy: bar['end_happy'],
        price_happy: bar['price_happy'],
        has_happy: bar['has_happy'],
        activities: { "concert" => bar['activities']['concert'],
                      "darts" => bar['activities']['darts'],
                      "pool" => bar['activities']['pool'],
                      "babyfoot" => bar['activities']['babyfoot'] },
        price: bar['price']
      )
      sleep 1
      puts Bar.last.formatted_address
    end
  end

end
