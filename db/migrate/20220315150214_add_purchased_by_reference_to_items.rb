class AddPurchasedByReferenceToItems < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :items, :users, column: :purchased_by_id
    add_index :items, :purchased_by_id
    change_column_null :items, :purchased_by_id, false
  end
end
