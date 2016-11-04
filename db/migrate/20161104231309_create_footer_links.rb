class CreateFooterLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :footer_links do |t|
      t.string :title
      t.string :link
      t.integer :footer_id
    end
  end
end
