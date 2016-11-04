class AddHomepageToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :homepage_id, :integer
  end
end
