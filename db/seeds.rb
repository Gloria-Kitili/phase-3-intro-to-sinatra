puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Mwiko", price: 70)
product2 = Product.create(name: "Sufuria", price: 150)
product3 = Product.create(name: "Sahani", price: 599)
product4 = Product.create(name: "Vijiko", price: 4502)
product5 = Product.create(name: "Kisu", price: 300)

puts "Creating reviews..."

review1 = Review.create(star_rating: 1, comment: Faker::Lorem.sentence, user_id: user1.id, product_id: product1.id)
review2 = Review.create(star_rating: 2, comment: Faker::Lorem.sentence, user_id: user2.id, product_id: product2.id)
review3 = Review.create(star_rating: 3, comment: Faker::Lorem.sentence, user_id: user3.id, product_id: product3.id)
review4 = Review.create(star_rating: 4, comment: Faker::Lorem.sentence, user_id: user1.id, product_id: product4.id)
review5 = Review.create(star_rating: 5, comment: Faker::Lorem.sentence, user_id: user2.id, product_id: product4.id)


puts "Seeding done!"