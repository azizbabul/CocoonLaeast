class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :event
      t.date :start
      t.date :end
      t.string :icon
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
