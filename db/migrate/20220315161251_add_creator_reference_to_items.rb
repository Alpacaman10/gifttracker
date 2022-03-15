class AddCreatorReferenceToItems < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :items, :users, column: :created_by
    add_index :items, :created_by
    change_column_null :items, :created_by, false
  end
end
