class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.integer :category, null: false
      t.integer :price, null: false
      t.text :content
      t.datetime :date, null: false
      t.timestamps
    end
  end
end
