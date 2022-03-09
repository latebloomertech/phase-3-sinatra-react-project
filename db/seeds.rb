puts "🌱 Seeding spices..."

puts "Deleting old data..."
Movie.destroy_all
User.destroy_all
Review.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)

puts "Creating movies..."
movie1 = Movie.create(name: "Her", poster_url: "")
movie2 = Movie.create(name: "Star Wars", poster_url: "")
movie3 = Movie.create(name: "The Batman", poster_url: "")
movie4 = Movie.create(name: "After Yang", poster_url: "")
movie5 = Movie.create(name: "Blacklight", poster_url: "")
movie6 = Movie.create(name: "Nightride", poster_url: "")

puts "Creating reviews..."

Review.create(star_rating: 4, comment: "Wow", user_id: user1.id, movie_id: movie5.id)
Review.create(star_rating: 3, comment: "Pretty cool", user_id: user1.id, movie_id: movie4.id)
Review.create(star_rating: 2, comment: "Just OK", user_id: user1.id, movie_id: movie3.id)
Review.create(star_rating: 5, comment: "Amazing", user_id: user1.id, movie_id: movie2.id)
Review.create(star_rating: 5, comment: "Awesome", user_id: user1.id, movie_id: movie1.id)
Review.create(star_rating: 2, comment: "Boring", user_id: user1.id, movie_id: movie1.id)
Review.create(star_rating: 3, comment: "Kinda fun", user_id: user1.id, movie_id: movie2.id)
Review.create(star_rating: 4, comment: "Great", user_id: user1.id, movie_id: movie3.id)
Review.create(star_rating: 4, comment: "Cool", user_id: user1.id, movie_id: movie4.id)
Review.create(star_rating: 3, comment: "Liked it", user_id: user1.id, movie_id: movie5.id)
Review.create(star_rating: 1, comment: "Sucks", user_id: user1.id, movie_id: movie6.id)
Review.create(star_rating: 2, comment: "Boring", user_id: user1.id, movie_id: movie6.id)



puts "Seeding done!"

puts "✅ Done seeding!"
