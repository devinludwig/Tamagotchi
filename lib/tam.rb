class Tamagotchi
  @@last_time = Time.new
  @@elapsed_time = 0

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
    @@elapsed_time = (current_time - @@last_time)
    @@last_time = current_time
  end

  def burn_calories
    burned_calories = (@@elapsed_time / 1).floor
    @food -= burned_calories
  end

  def decrease_activity_level
    activity_decrease = (@@elapsed_time / 1).floor
    @activity_level -= activity_decrease
  end

  def decrease_sleep_level
    sleep_decrease = (@@elapsed_time / 1).floor
    @sleep -= sleep_decrease
  end

  def feed
    # if @food < 9
      @food += 2
    # end
  end

  def nap
    # if @sleep < 9
      @sleep += 2
    # end
  end

  def play
    # if @activity_level < 9
      @activity_level += 2
    # end
  end

end
