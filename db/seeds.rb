puts "🌱 Seeding spices..."

puts "Deleting old data..."
Movie.destroy_all
User.destroy_all
Review.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)

puts "Creating movies..."
movie1 = Movie.create(name: "Her", poster_url: "https://resizing.flixster.com/LHHNO_V755D3CEWdj_7Qp-vtHO8=/fit-in/80x126/v2/https://flxt.tmsimg.com/assets/p9991186_p_v8_ag.jpg")
movie2 = Movie.create(name: "Star Wars", poster_url: "https://resizing.flixster.com/kMIUvpDVv_oQABEDe1lp-6HDQWw=/206x305/v2/https://flxt.tmsimg.com/assets/p4407_p_v12_ab.jpg")
movie3 = Movie.create(name: "The Batman", poster_url: "http://resizing.flixster.com/IaXbRF4gIPh9jireK_4VCPNfdKc=/50x75/v2/https://resizing.flixster.com/z7Qex7L7ZUT1YdAwuJ49BEulml4=/ems.ZW1zLXByZC1hc3NldHMvbW92aWVzLzc1OGFlMDI0LTE1ZTEtNDE4ZS04Y2RmLWNjYzcyOWQyZmMyNi5qcGc=")
movie4 = Movie.create(name: "After Yang", poster_url: "http://resizing.flixster.com/IaXbRF4gIPh9jireK_4VCPNfdKc=/50x75/v2/https://resizing.flixster.com/gOOmso8R_7Hfa66nDEt39EYdTDs=/ems.ZW1zLXByZC1hc3NldHMvbW92aWVzL2Q4ZDY5OGEzLTcyM2EtNDYwOS1hZWQ0LTBjMDBjYTQwODI4MS5qcGc=")
movie5 = Movie.create(name: "Blacklight", poster_url: "http://resizing.flixster.com/IaXbRF4gIPh9jireK_4VCPNfdKc=/50x75/v2/https://resizing.flixster.com/iIJGaRQoiutL5j2xRfytiqyMyMU=/ems.ZW1zLXByZC1hc3NldHMvbW92aWVzL2Q2YmUyNTA4LWMwYjMtNDJmMi1iYmRhLTVlNWU0YzVjOWMxMy5qcGc=")
movie6 = Movie.create(name: "Nightride", poster_url: "http://resizing.flixster.com/IaXbRF4gIPh9jireK_4VCPNfdKc=/50x75/v2/https://resizing.flixster.com/HCX7jaH7_7kGZxDpykvcdtU3bmo=/ems.ZW1zLXByZC1hc3NldHMvbW92aWVzL2M3Nzc2MDRiLWNhMzctNGIzOC1iMzBiLTQ3NDk3N2M2N2VmMi5wbmc=")

puts "Creating reviews..."

Review.create(star_rating: 4, comment: "The movie Her was really cool.  Mi friend didn't like it, but I loved it.", user_id: user1.id, movie_id: movie5.id)
Review.create(star_rating: 3, comment: "Star Wars is one of my favorite movies.  I watch it a couple of times a year.", user_id: user1.id, movie_id: movie4.id)
Review.create(star_rating: 2, comment: "I'm not sure why I even watched Uncharted", user_id: user1.id, movie_id: movie3.id)
Review.create(star_rating: 5, comment: "The Batman is worth watching - I recommend it", user_id: user1.id, movie_id: movie2.id)
# Review.create(star_rating: 5, comment: "Awesome", user_id: user1.id, movie_id: movie1.id)
# Review.create(star_rating: 2, comment: "Boring", user_id: user1.id, movie_id: movie1.id)
# Review.create(star_rating: 3, comment: "Kinda fun", user_id: user1.id, movie_id: movie2.id)
# Review.create(star_rating: 4, comment: "Great", user_id: user1.id, movie_id: movie3.id)
# Review.create(star_rating: 4, comment: "Cool", user_id: user1.id, movie_id: movie4.id)
# Review.create(star_rating: 3, comment: "Liked it", user_id: user1.id, movie_id: movie5.id)
# Review.create(star_rating: 1, comment: "Sucks", user_id: user1.id, movie_id: movie6.id)
# Review.create(star_rating: 2, comment: "Boring", user_id: user1.id, movie_id: movie6.id)



puts "Seeding done!"

puts "✅ Done seeding!"
