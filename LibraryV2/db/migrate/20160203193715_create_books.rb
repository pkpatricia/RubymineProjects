class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.date :publicationdate
      t.integer :pagecount
      t.string :language

      t.timestamps null: false
    end
  end
end
