class AddColumnToSchedulesTable < ActiveRecord::Migration
  def change
    add_column :schedules, :date, :datetime
    add_column :schedules, :finish, :boolean
  end
end
