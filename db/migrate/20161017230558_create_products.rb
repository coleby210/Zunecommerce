class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ""
      t.text :description, null: false, default: ""
      t.decimal :price, default: 0
      t.integer :stock, default: 1
      t.string :image, default: ""
      t.references :category, null: false
    end
  end
end
