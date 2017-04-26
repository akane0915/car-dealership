require('rspec')
require('vehicle')

describe(Vehicle) do
  describe('#age') do
    it('returns the vehicle age') do
      test_vehicle = Vehicle.new('Toyota','Prius',2000)
      expect(test_vehicle.age()).to(eq(17))
    end
  end
end
