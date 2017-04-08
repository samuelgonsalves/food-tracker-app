class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.integer :calories
      t.integer :carb
      t.integer :protein
      t.integer :fat

      t.timestamps
    end
  end
end
