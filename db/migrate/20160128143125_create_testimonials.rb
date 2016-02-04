class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :description
      t.string :name
      t.string :particulars

      t.timestamps null: false
    end
  end
end
