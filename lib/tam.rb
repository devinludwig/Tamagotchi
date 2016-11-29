class Tamagotchi

  def initialize(pet_name, food=10)
    @pet_name = pet_name
    @food = food
  end

  def name
    @pet_name
  end

  def food
    @food
  end
end
