class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :date
      t.time :time
      t.text :comments
      t.string :created_by

      t.timestamps null: false
    end
  end
end
