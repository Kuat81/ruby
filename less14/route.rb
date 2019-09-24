require_relative 'station'

class Route
  attr_reader :stations

  def initialize(first_station, second_station)
    @first_s = first_station
    @second_s = second_station
    @stations = [@first_s, @second_s]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def del_station(station)
    return "Error" if station == @stations.first || @stations.last
    @stations.delete(station)
  end
end
