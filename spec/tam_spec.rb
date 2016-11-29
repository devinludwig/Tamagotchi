require('rspec')
require('tam')

describe(Tamagotchi) do
  describe('#initialize') do
    it "sets the name and levels" do
      my_pet = Tamagotchi.new('whatever')
      expect(my_pet.name()).to(eq('whatever'))
      expect(my_pet.food()).to(eq(10))
    end
  end
end
