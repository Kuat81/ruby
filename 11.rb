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
    @stations = [@first_s, @second_s]
  end

  def stations
    @stations
  end
end

class Train

  def initialize(number, type)
    @number = number
    @type = type
    @@wagons_amount = 0
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

  def wagons
    @wagons_amount
  end

  def add_wagon
    @wagons_amount +=1 if @speed == 0
  end

  def delete_wagon
    @wagons_amount -=1 if @speed == 0
  end
end
