class AddScheduleMemoToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :schedule_memo, :text
  end
end
