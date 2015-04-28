require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places_been")

get("/") do
  @places_been = PlacesBeen.all()
  erb(:index)
end

post("/places") do
  description = params.fetch("description")
  task = PlacesBeen.new(description)
  task.save()
  erb(:success)
end
