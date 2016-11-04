class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :picture
      t.string :name
      t.string :comment
      t.string :job_title
      t.string :company
      t.integer :homepage_id
    end
  end
end
