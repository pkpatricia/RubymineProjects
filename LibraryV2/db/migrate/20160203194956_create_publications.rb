class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.integer :book_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
