class CreatePopulationInformations < ActiveRecord::Migration
  def change
    create_table :population_informations do |t|
      t.string :server, :null => false
      t.integer :online, :null => false
      t.integer :shops, :null => false
      t.timestamps
    end
  end
end
