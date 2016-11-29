class Tamagotchi
  @@last_time = Time.new
  @@burned_calories = 0

  def initialize(pet_name, food=10, sleep_lvl=10, activity_level=10)
    @pet_name = pet_name
    @food = food
    @sleep = sleep_lvl
    @activity_level = activity_level
    @birth_time = Time.new
  end

  def name
    @pet_name
  end

  def food
    @food
  end

  def sleep_level
    @sleep
  end

  def activity_level
    @activity_level
  end

  def is_alive
    if @food == 0
      false
    else
      true
    end
  end

  def set_food_level(level)
    @food = level
  end

  define_singleton_method(:time_passes) do
    current_time = Time.new
    @@burned_calories = ((current_time - @@last_time)/10).ceil
    @@last_time = current_time
  end

  def burn_calories
    @food -= @@burned_calories
  end
end
