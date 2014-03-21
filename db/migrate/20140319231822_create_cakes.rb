class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
      t.string :name
      t.integer :eggs
      t.integer :flour
      t.integer :sugar
      t.integer :oil
      t.text :comments

      t.timestamps
    end
  end
end
