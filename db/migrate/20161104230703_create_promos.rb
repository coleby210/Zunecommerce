class CreatePromos < ActiveRecord::Migration[5.0]
  def change
    create_table :promos do |t|
      t.string :bg_img
      t.string :tagline
      t.string :title
      t.string :link
      t.integer :homepage_id
    end
  end
end
