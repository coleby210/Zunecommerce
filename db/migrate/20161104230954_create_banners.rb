class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :symbol
      t.string :title
      t.text :description
      t.integer :homepage_id
    end
  end
end
