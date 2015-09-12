class CreatePriestUsers < ActiveRecord::Migration
  def up
    create_table :priest_users do |t|
      t.integer :area_id
      t.string :circles
      t.string :name
      t.string :religion
      t.string :phone
      t.text :brief
      t.text :description
      t.string :icon

      t.timestamps null: false
    end
    add_index('priest_users',['area_id','religion'])
  end

  def down
    drop_table :priest_users
  end
end
