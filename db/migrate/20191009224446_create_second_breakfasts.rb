class CreateSecondBreakfasts < ActiveRecord::Migration[6.0]
  def change
    create_table :second_breakfasts do |t|
      t.string :name
      t.string :last_name
      t.string :food_name
      t.string :ingredients
      t.string :directions
      t.integer :prep_time
      t.integer :eat_time
      
      t.timestamps
    end
  end
end
