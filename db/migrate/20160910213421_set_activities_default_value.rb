class SetActivitiesDefaultValue < ActiveRecord::Migration
  def change
  	change_column :bars, :activities, :json, default: { 'concert' => nil, 'darts' => nil, 'pool' => nil, 'babyfoot' => nil }
  end
end
