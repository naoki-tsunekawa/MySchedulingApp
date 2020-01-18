class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :title
      t.text :body
      t.datetime :deadline
      t.boolean :compleate

      t.timestamps
    end
  end
end
