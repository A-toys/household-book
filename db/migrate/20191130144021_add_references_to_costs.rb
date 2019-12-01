class AddReferencesToCosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :costs, :user, foreign_key: true, null: false
  end
end
