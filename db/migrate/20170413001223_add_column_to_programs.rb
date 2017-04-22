class AddColumnToPrograms < ActiveRecord::Migration
  def change

  	add_column :programs, :representative, :string

  end
end
