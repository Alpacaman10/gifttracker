class AddUserReferenceToRelationships < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relationships, :users
    add_index :relationships, :user_id
    change_column_null :relationships, :user_id, false
  end
end
