class AddEventIdToProgram < ActiveRecord::Migration
  def change

  	add_column :programs, :event_id, :integer

  end
end
