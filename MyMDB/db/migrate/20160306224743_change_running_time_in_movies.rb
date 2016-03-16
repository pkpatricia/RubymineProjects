class ChangeRunningTimeInMovies < ActiveRecord::Migration
  def change
    change_column :movies, :running_time, :integer
  end
end
