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

Setting.create(phone: "111-111-1111", address: "111 Fake St, San Francisco, CA", email: "contact@fake-email.com", copyright: "Some Company", web_title: "Zunecommerce", site_name_first: "Zune", site_name_second: "Commerce", site_tagline: "Selling Simplified")

Homepage.create(name: "Default", setting_id: 1)

Slider.create(bg_img: "http://www.markups.io/items/dailyShop/img/slider/5.jpg", tagline: "Slide 1", title: "Exclusive Shoes", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.", button_text: "Shop Now", button_link: "http://google.com", homepage_id: 1)
Slider.create(bg_img: "http://www.markups.io/items/dailyShop/img/slider/3.jpg", tagline: "Slide 2", title: "Exclusive Shoes", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.", button_text: "Shop Now", button_link: "http://google.com", homepage_id: 1)

Promo.create(bg_img: "http://www.markups.io/items/dailyShop/img/promo-banner-1.jpg", tagline: "Tag 1", title: "For Women", link: "http://google.com", homepage_id: 1)
Promo.create(bg_img: "http://www.markups.io/items/dailyShop/img/promo-banner-3.jpg", tagline: "Tag 2", title: "For Women", link: "http://google.com", homepage_id: 1)
Promo.create(bg_img: "http://www.markups.io/items/dailyShop/img/promo-banner-3.jpg", tagline: "Tag 3", title: "For Women", link: "http://google.com", homepage_id: 1)
Promo.create(bg_img: "http://www.markups.io/items/dailyShop/img/promo-banner-3.jpg", tagline: "Tag 4", title: "For Women", link: "http://google.com", homepage_id: 1)
Promo.create(bg_img: "http://www.markups.io/items/dailyShop/img/promo-banner-3.jpg", tagline: "Tag 5", title: "For Women", link: "http://google.com", homepage_id: 1)

Testimonial.create(picture: "http://www.markups.io/items/dailyShop/img/testimonial-img-3.jpg", name: "Person 1", comment: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.", job_title: "Title", company: "Company", homepage_id: 1)
Testimonial.create(picture: "http://www.markups.io/items/dailyShop/img/testimonial-img-1.jpg", name: "Person 2", comment: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.", job_title: "Title", company: "Company", homepage_id: 1)
Testimonial.create(picture: "http://www.markups.io/items/dailyShop/img/testimonial-img-2.jpg", name: "Person 3", comment: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.", job_title: "Title", company: "Company", homepage_id: 1)

Newsletter.create(title: "Subscribe to our Newsletter", description: "We have tons of goodies", button_text: "Subscribe", homepage_id: 1)

Banner.create(symbol: "truck", title: "Free Shipping", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam, nobis.")
Banner.create(symbol: "clock-o", title: "30 Days Money Back", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam, nobis.")
Banner.create(symbol: "phone", title: "24/7 Support", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam, nobis.")

NavigationLink.create(title: "Home", link: "/")

3.times do |x|
  Footer.create(title: "Footer Links #{x+1}")
end

3.times do |y|
  5.times do |x|
    FooterLink.create(title: "Link #{x+1}", link: "#", footer_id: y+1)
  end
end

