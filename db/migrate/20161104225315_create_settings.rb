class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :phone
      t.string :address
      t.string :email
      t.string :copyright
      t.string :web_title
      t.string :site_name_first
      t.string :site_name_second
      t.string :site_tagline
    end
  end
end
