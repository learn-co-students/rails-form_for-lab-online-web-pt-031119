class Schoolclasses < ActiveRecord::Migration[5.0]

  create_table :school_classes do |t|
    t.string :title
    t.integer :room_number
    t.timestamps null: false
    
  end
end
