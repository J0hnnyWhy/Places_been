class PlacesBeen
  @@places = []
  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@places
  end

  define_method(:save) do
    @@places.push(self)
  end

  define_singleton_method(:clear) do
    @@places =[]
  end
end
