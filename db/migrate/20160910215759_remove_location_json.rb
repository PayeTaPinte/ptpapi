class RemoveLocationJson < ActiveRecord::Migration
  def change
  	remove_column :bars, :location
  end
end
