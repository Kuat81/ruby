class Station
  attr_reader :name
  attr_accessor :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def add_train(train)
    @trains << train
    @train = train
  end

  def trains_type(type)
    @trains.select{|n| n == type}
  end

  def go_train(station)
    @trains.select{|n| station.add_train(n)}
    @trains.delete(@train)
  end
end

class Route
  attr_reader :stations

  def initialize(first_station, second_station)
    @first_s = first_station
    @second_s = second_station
    @stations = [@first_s, @second_s]
  end

  def add_stations(station)
    @stations.insert(-2, station)
  end

  def del_stations(station)
    @stations.delete(station)
  end
end

class Train
  attr_reader :speed, :wagons_amount
  @index = 0
  def initialize(train, type)
    @train = train
    @type = type
    @wagons_amount = 0
    @speed = 0
  end

  def station_route(route)
    @route = route
    @train = @route.stations.first
    @train.add_train(self)

  end

  def go_next
    @index = @route.stations.index(@train)
    @index += 1
    @train = @route.stations[@index]
    @train.add_train(self)
  #  @speed += 15
  end

  def go_back
    @index = @route.stations.index(@train)
    @index -= 1
    @train = @route.stations[@index]
    @train.add_train(self)
  #  @speed += 15
  end

  def current_station
    @index = @route.stations.index(@train)
    @route.stations[@index]
  end

  def stop
    @speed = 0
  end

  def add_wagon
    @wagons_amount +=1 if @speed == 0
  end

  def delete_wagon
    @wagons_amount -=1 if @speed == 0
  end
end
