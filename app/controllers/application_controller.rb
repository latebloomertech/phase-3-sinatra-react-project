class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  get "/" do
    { message: "Nothing is really here" }.to_json
  end


  get "/users" do
    users = User.all
    users.to_json
    # { message: "the users" }.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  
    get "/movies" do
    # { message: "the movies" }.to_json
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json
  end


  get "/reviews" do
    # { message: "the reviews" }.to_json
    reviews = Review.all
    reviews.to_json
  end

  post "/reviews" do
    Review.create(params)
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
