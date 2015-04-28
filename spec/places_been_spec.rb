require('rspec')
require('places_been')

describe(PlacesBeen) do
  describe("#description") do
    it("lets you enter places you've been.") do
      test_places = PlacesBeen.new("VooDoo Donuts")
      expect(test_places.description()).to(eq("VooDoo Donuts"))
    end
  end
end
