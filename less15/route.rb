# В классе Route (маршрут) создать метод класса all, который возвращает хэш, в
# котором ключом будет являться каждый созданный на данный момент маршрут, а
# значением к нему - массив станций, из которых состоит этот маршрут.

require_relative 'station'

class Route
  @@routes = {}

  def self.all
    @@routes
  end

  attr_reader :stations

  def initialize(first_station, second_station)
    @first_s = first_station
    @second_s = second_station
    @stations = [@first_s, @second_s]
    @@routes[self] = stations
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def del_station(station)
    return "Error" if station == @stations.first || station == @stations.last
    @stations.delete(station)
  end

end
