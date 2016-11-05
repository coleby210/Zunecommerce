class CreateNavigationLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :navigation_links do |t|
      t.string :title
      t.string :link
      t.boolean :dropdown
    end
  end
end
