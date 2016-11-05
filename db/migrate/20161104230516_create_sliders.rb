class CreateSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :sliders do |t|
      t.string :bg_img
      t.string :tagline
      t.string :title
      t.text :description
      t.string :button_text
      t.string :button_link
      t.integer :homepage_id
    end
  end
end
