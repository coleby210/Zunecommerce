class CreateHomepages < ActiveRecord::Migration[5.0]
  def change
    create_table :homepages do |t|
      t.string :name
      t.boolean :sliders
      t.boolean :promos
      t.boolean :featured
      t.boolean :banner
      t.boolean :testimonials
      t.boolean :newsletter
      t.integer :setting_id
    end
  end
end
