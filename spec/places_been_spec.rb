require('rspec')
require('places_been')

describe(PlacesBeen) do
  describe("#description") do
    it("lets you enter places you've been.") do
      test_places = PlacesBeen.new("VooDoo Donuts")
      expect(test_places.description()).to(eq("VooDoo Donuts"))
    end
  end

  describe(".all") do
    it ("is empty at first") do
    expect(PlacesBeen.all()).to(eq([]))
  end
end

  describe("#save") do
    it("adds a location to the array of saved") do
      test_task = PlacesBeen.new("VooDoo Donuts")
      test_task.save()
      expect(PlacesBeen.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved locations") do
      PlacesBeen.new("VooDoo Donuts").save()
      PlacesBeen.clear()
      expect(PlacesBeen.all()).to(eq([]))
    end
  end




end
