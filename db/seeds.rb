puts "🌱 Seeding spices..."

puts "Deleting old data..."
Movie.destroy_all
User.destroy_all
Review.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating movies..."
movie1 = Movie.create(name: "From Here to Eternity", poster_url: "https://resizing.flixster.com/DdLt0QYBZxhISqTdH3JlTOE58uQ=/206x305/v2/https://flxt.tmsimg.com/assets/p535_p_v8_aa.jpg")
movie2 = Movie.create(name: "The Manchurian Candidate", poster_url: "https://resizing.flixster.com/MrJT0hc_wGtoRTLWGybnu3q8274=/206x305/v2/https://flxt.tmsimg.com/assets/p10903_p_v8_af.jpg")
movie3 = Movie.create(name: "Some Came Running", poster_url: "https://resizing.flixster.com/BMxuhXKw85A9eLKJxsqnO9VoZP8=/206x305/v2/https://flxt.tmsimg.com/assets/p816_p_v8_ab.jpg")
movie4 = Movie.create(name: "The Man with the Golden Arm", poster_url: "https://resizing.flixster.com/r3upPKCkZY1thI4CLndsxHiSl7Q=/206x305/v2/https://flxt.tmsimg.com/assets/p2909_p_v8_aa.jpg")
movie5 = Movie.create(name: "High Society", poster_url: "https://resizing.flixster.com/EU-__19cXXvox1iKLoGlPC82iMQ=/206x305/v2/https://flxt.tmsimg.com/assets/p5799_p_v8_ad.jpg")

movie6 = Movie.create(name: "The Detective", poster_url: "https://resizing.flixster.com/0sfQSLahUDMVwLrCGBjlV9D1TWk=/fit-in/80x126/v2/https://flxt.tmsimg.com/assets/p588_p_v8_aa.jpg")
movie7 = Movie.create(name: "Lady in Cement", poster_url: "https://resizing.flixster.com/dNUumbB2Pu1jQJ67rDV6VEmYyBs=/206x305/v2/https://flxt.tmsimg.com/assets/p1409_p_v8_ac.jpg")
movie8 = Movie.create(name: "Von Ryan's Express", poster_url: "https://resizing.flixster.com/3EouVYE0_14B-QYjZyt4tNsSLG4=/fit-in/80x126/v2/https://flxt.tmsimg.com/assets/p417_p_v8_ab.jpg")
movie9 = Movie.create(name: "Tony Rome", poster_url: "https://resizing.flixster.com/1LbSVYrWAqGH_EU58z1YNd5OGjU=/fit-in/80x126/v2/https://flxt.tmsimg.com/assets/p440_p_v8_aa.jpg")
movie10 = Movie.create(name: "Ocean's 11", poster_url: "https://resizing.flixster.com/kjECWqch_IRqRQiczUE462WW75o=/fit-in/80x126/v2/https://flxt.tmsimg.com/assets/p3290_p_v8_ak.jpg")

puts "Creating reviews..."

Review.create(star_rating: 4, comment: "Wow", user_id: user1.id, movie_id: movie5.id)
Review.create(star_rating: 3, comment: "Pretty cool", user_id: user2.id, movie_id: movie4.id)
Review.create(star_rating: 2, comment: "Just OK", user_id: user3.id, movie_id: movie3.id)
Review.create(star_rating: 1, comment: "Kinda sucks", user_id: user3.id, movie_id: movie2.id)
Review.create(star_rating: 1, comment: "Sucks", user_id: user2.id, movie_id: movie1.id)
Review.create(star_rating: 2, comment: "Boring", user_id: user1.id, movie_id: movie1.id)
Review.create(star_rating: 3, comment: "Kinda fun", user_id: user1.id, movie_id: movie2.id)
Review.create(star_rating: 4, comment: "Great", user_id: user2.id, movie_id: movie3.id)
Review.create(star_rating: 4, comment: "Cool", user_id: user3.id, movie_id: movie4.id)
Review.create(star_rating: 3, comment: "Liked it", user_id: user3.id, movie_id: movie5.id)
Review.create(star_rating: 4, comment: "Wow", user_id: user1.id, movie_id: movie10.id)
Review.create(star_rating: 3, comment: "Pretty cool", user_id: user2.id, movie_id: movie9.id)
Review.create(star_rating: 2, comment: "Just OK", user_id: user3.id, movie_id: movie8.id)
Review.create(star_rating: 1, comment: "Kinda sucks", user_id: user3.id, movie_id: movie7.id)
Review.create(star_rating: 1, comment: "Sucks", user_id: user2.id, movie_id: movie6.id)
Review.create(star_rating: 2, comment: "Boring", user_id: user1.id, movie_id: movie6.id)
Review.create(star_rating: 3, comment: "Kinda fun", user_id: user1.id, movie_id: movie7.id)
Review.create(star_rating: 4, comment: "Great", user_id: user2.id, movie_id: movie8.id)
Review.create(star_rating: 4, comment: "Cool", user_id: user3.id, movie_id: movie9.id)
Review.create(star_rating: 3, comment: "Liked it", user_id: user3.id, movie_id: movie10.id)


puts "Seeding done!"

puts "✅ Done seeding!"
