class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :shopping_cart_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
