class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :schedule, foreign_key: true, type: :integer
      t.string :name, null: false
      t.text :comment, null:false

      t.timestamps
    end
  end
end
