class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.references :category, foreign_key: true
      t.integer :price, null: false
      t.string :content
      t.datetime :date, null: false
      t.timestamps
    end
  end
end
