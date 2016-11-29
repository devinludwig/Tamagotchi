require('rspec')
require('tam')

describe(Tamagotchi) do
  describe('#initialize') do
    it "sets the name and levels" do
      my_pet = Tamagotchi.new('whatever')
      expect(my_pet.name()).to(eq('whatever'))
      expect(my_pet.food()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe('#is_alive') do
    it('is alive if the food level is greater than 0') do
      yoko = Tamagotchi.new('yoko')
      expect(yoko.is_alive()).to(eq(true))
    end

    it('is dead if the food level is 0') do
      yoko = Tamagotchi.new('yoko')
      yoko.set_food_level(0)
      expect(yoko.is_alive()).to(eq(false))
    end
  end

  describe('#time_passes') do
    it "updates last_time and burned_calories based on how much time has passed since method last ran" do
      my_pet = Tamagotchi.new('whatever')
      Tamagotchi.time_passes()
      my_pet.burn_calories()
      expect(my_pet.food()).to(eq(9))
    end
  end
end
