class AddCircleReferenceToRelationships < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relationships, :circles
    add_index :relationships, :circle_id
    change_column_null :relationships, :circle_id, false
  end
end
