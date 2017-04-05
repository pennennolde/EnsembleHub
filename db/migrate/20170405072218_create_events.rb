class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

    	t.integer :year
    	t.integer :month
    	t.integer :date
    	t.text :event
    	t.text :place
    	t.string :name

      t.timestamps null: false
    end
  end
end
