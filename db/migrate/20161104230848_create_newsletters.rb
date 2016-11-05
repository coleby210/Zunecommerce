class CreateNewsletters < ActiveRecord::Migration[5.0]
  def change
    create_table :newsletters do |t|
      t.string :title
      t.text :description
      t.string :button_text
      t.integer :homepage_id
    end
  end
end
