class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :created_by
      t.string :image
      t.string :url
      t.text :description
      t.float :price
      t.boolean :received
      t.integer :purchased_by_id
      t.integer :circle_id
      t.integer :priority

      t.timestamps
    end
  end
end
