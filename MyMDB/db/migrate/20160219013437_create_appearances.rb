class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps null: false
    end
  end
end
