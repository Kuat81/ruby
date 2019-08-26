class Station
  attr_reader :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def add_train(number)
    @trains << number
  end

  def trains_type(type)
    @trains.select{|train| train.type == type}
  end

  def del_train(number)
    @trains.delete(number)
  end
end

class Route
  attr_reader :stations

  def initialize(first_station, second_station)
    @first_s = first_station
    @second_s = second_station
    @stations = [@first_s, @second_s]
  end

  def add_station(station)
    return "Error" if station == @station.first || @station.last
    @stations.insert(-2, station)
  end

  def del_station(station)
    return "Error" if station == @station.first || @station.last
    @stations.delete(station)
  end
end

class Train
  attr_accessor :number

  def initialize(number, type)
    @number = number
    @type = type
  end

  def station_route(route)
    @route = route
    @number = @route.stations.first
    @number.add_train(self)
  end

  def current_st_index
    @route.stations.index(@number)
  end

  def current_station
    @route.stations[@number]
  end
  def next_station
    @route.stations[current_st_index + 1]
  end

  def previous_station
    @route.stations[current_st_index - 1]
  end

  def go_next_st
    #return unless @current_station && @route
    return current_station == @route.stations.last
    @number.del_train(self)
    @number=@route.stations[current_st_index + 1]
    @number.add_train(self)
  end

  def go_back_st
    #return unless @current_station && @route
    return current_station == @route.stations.first
    @number.del_train(self)
    @number=@route.stations[current_st_index - 1]
    @number.add_train(self)
  end

end
