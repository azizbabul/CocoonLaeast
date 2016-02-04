class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :name
      t.string :title1
      t.string :title2

      t.timestamps null: false
    end
  end
end
