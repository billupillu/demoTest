class CreateAreas < ActiveRecord::Migration
  def up
    create_table :areas do |t|
      t.integer :position
      t.integer :city_id
      t.string :name

      t.timestamps null: false
    end
    add_index('areas', 'city_id')
  end

  def down
  	drop_table :areas
  end
end
