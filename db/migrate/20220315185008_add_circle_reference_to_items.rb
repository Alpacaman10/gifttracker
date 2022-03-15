class AddCircleReferenceToItems < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :items, :circles
    add_index :items, :circle_id
    change_column_null :items, :circle_id, false
  end
end
