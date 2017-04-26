require "dealership"
require "rspec"
require "pry"

describe(Dealership) do
  describe('#name') do
    it('returns the dealership name') do
      test_dealership = Dealership.new("Bob's Cars")
      expect(test_dealership.name()).to(eq("Bob's Cars"))
    end
  end

  describe('#id') do
    it('returns the id of the dealership') do
      test_dealership = Dealership.new("Bob's Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end






  # before() do
  #   Dealership.clear()
  # end
  #
  # describe('.clear') do
  #   it('will clear the dealerships array') do
  #     test_dealer
  #   end
  # end
end
