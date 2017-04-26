require "dealership"
require "rspec"
require "pry"

describe(Dealership) do
  before() do
    Dealership.clear()
  end

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

  describe('#cars') do
    it('returns an empty array of cars for the dealership') do
      test_dealership = Dealership.new("Bob's Cars")
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a dealership to the array of dealerships') do
      test_dealership = Dealership.new("Bob's Cars")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe('.all') do
    it('empty at first') do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('will clear the dealerships array') do
      test_dealership = Dealership.new("Bob's Cars")
      test_dealership.save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end
end
