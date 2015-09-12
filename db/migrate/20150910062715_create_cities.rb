class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end

  def down
  	drop_table :cities
  end
end
