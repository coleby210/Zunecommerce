class CreateHomepages < ActiveRecord::Migration[5.0]
  def change
    create_table :homepages do |t|
      t.string :name
      t.boolean :sliders, default: true
      t.boolean :promos, default: true
      t.boolean :featured_products, default: true
      t.boolean :banners, default: true
      t.boolean :testimonials, default: true
      t.boolean :newsletter, default: true
      t.integer :setting_id
    end
  end
end
