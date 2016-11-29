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
  end
end
