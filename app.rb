require('sinatra')
require('sinatra/reloader')
require('./lib/tam')
also_reload('lib/**/*.rb')

get('/') do
  erb(:home)
end

get("/create") do
  @name = params.fetch('name')
  $tamagotchi = Tamagotchi.new(@name)
  @food = $tamagotchi.food()
  @sleep = $tamagotchi.sleep_level()
  @activity = $tamagotchi.activity_level()
  erb(:index)
end

get("/feed") do
  @name = params.fetch('name')
  Tamagotchi.time_passes()
  $tamagotchi.feed()
  $tamagotchi.burn_calories()
  $tamagotchi.decrease_activity_level()
  $tamagotchi.decrease_sleep_level()
  @food = $tamagotchi.food()
  @sleep = $tamagotchi.sleep_level()
  @activity = $tamagotchi.activity_level()
  erb(:index)
end

get("/sleep") do
  @name = params.fetch('name')
  Tamagotchi.time_passes()
  $tamagotchi.nap()
  $tamagotchi.burn_calories()
  $tamagotchi.decrease_activity_level()
  $tamagotchi.decrease_sleep_level()
  @food = $tamagotchi.food()
  @sleep = $tamagotchi.sleep_level()
  @activity = $tamagotchi.activity_level()
  erb(:index)
end

get("/play") do
  @name = params.fetch('name')
  Tamagotchi.time_passes()
  $tamagotchi.play()
  $tamagotchi.burn_calories()
  $tamagotchi.decrease_activity_level()
  $tamagotchi.decrease_sleep_level()
  @food = $tamagotchi.food()
  @sleep = $tamagotchi.sleep_level()
  @activity = $tamagotchi.activity_level()
  erb(:index)
end
