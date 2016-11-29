class Tamagotchi

  def initialize(pet_name, food=10, sleep_lvl=10)
    @pet_name = pet_name
    @food = food
    @sleep = sleep_lvl
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
end
