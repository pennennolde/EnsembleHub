class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|

    	t.integer :turn
    	t.string :group
    	t.string :composer
    	t.string :arranger
    	t.string :music
    	t.text :attention
    	t.text :comment

      t.timestamps null: false
    end
  end
end
