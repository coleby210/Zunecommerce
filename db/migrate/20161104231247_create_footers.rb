class CreateFooters < ActiveRecord::Migration[5.0]
  def change
    create_table :footers do |t|
      t.string :title
    end
  end
end
