class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.date :publication_date
      t.integer :page_count
      t.string :language
      t.decimal :price

      t.timestamps null: false
    end
  end
end
