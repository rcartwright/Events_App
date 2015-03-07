class CreateBandEvents < ActiveRecord::Migration
  def change
    create_table :band_events do |t|
      t.references :band, index: true
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key :band_events, :bands
    add_foreign_key :band_events, :events
  end
end
