class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :cart_id
      t.integer :book_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
