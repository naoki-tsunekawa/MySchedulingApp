class CreateScheduleTagRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :schedule_tag_relations do |t|
      t.references :schedule, foreign_key: true, type: :integer
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
