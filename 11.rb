class Station
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class Route
  def initialize(first_station, second_station)
    @first_s = first_station
    @second_s = second_station
    @stations = []
  end

  def stations
    @stations = [@first_s, @second_s]
  end
end

class Train

  def initialize(number, type, count)
    @number = number
    @type = type
    @count = count
    @speed = 0
  end

  def go
    @speed += 15
  end

  def speed
    @speed
  end

  def stop
    @speed = 0
  end

  def wagon
    @count
  end

  def wagon_plus
    @count +=1 if @speed == 0
  end

  def wagon_minus
    @count -=1 if @speed == 0
  end
end
