class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|
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
