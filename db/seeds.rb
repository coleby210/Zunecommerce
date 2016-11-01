require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@admin.com", first_name: "admin", last_name: "admin", password: "123123123", admin: true)

cats = []
count = 0
while count < 5
  dep = Faker::Commerce.department(1)
  unless cats.include?(dep)
    cats << dep
    Category.create(name: dep)
  end
  count += 1
end

50.times do
  Product.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph, price: Faker::Commerce.price, stock: rand(1..20), image: Faker::Avatar.image("my-own-slug", "50x50"), category_id: rand(1..5))
end
