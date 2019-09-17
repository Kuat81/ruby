class Station
  attr_reader :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def accept_train(train)
    @trains << train
  end

  def trains_type(type)
    @trains.select{|train| train.type == type}
  end

  def sent_train(train)
    @trains.delete(train)
  end

  def train_arr
    @trains.select{|train| p train.number}
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
    return "Error" if station == @stations.first #|| @stations.last
    @stations.insert(-2, station)
  end

  def del_station(station)
    return "Error" if station == @stations.last
    @stations.delete(station)
  end

  def stations_arr
    @stations.each{|station| p station.name}
  end
end

class Train
  attr_reader :number, :type

  def initialize(number, type)
    @number = number
    @type = type
  end

  def station_route(route)
    @route = route
    @current_st1 = @route.stations.first.name
    @current_st = @route.stations.first
    @current_st.accept_train(self)
  end

  def current_st_index
    @route.stations.index(@current_st)
  end

  def current_station
    puts @current_st1
  end
  def next_st
     @route.stations[current_st_index + 1]
  end

  def previous_st
     @route.stations[current_st_index - 1]
  end

  def go_next_st
    move(next_st)
  end

  def go_back_st
    move(previous_st)
  end

  def move(station)
    return unless @current_st && @route
    #return if @current_st == @route.stations.first || @route.stations.last
    @current_st.sent_train(self)
    @current_st = station
    @current_st.accept_train(self)
  end

end


ala = Station.new('Ala')
ast = Station.new('Ast')

rou = Route.new(ala, ast)

tr1 = Train.new('111', 'pass')
tr2 = Train.new('222', 'pass')
tr3 = Train.new('333', 'cargo')

# tr1.station_route(rou)
# ala.train_arr
# tr1.current_station
# tr1.next_st
# tr1.go_next_st
# ast.train_arr

qar = Station.new('Qar')
rou.add_station(qar)
rou.stations_arr
rou.del_station(qar)
rou.stations_arr
#ala.accept_train(tr2)
#ala.accept_train(tr3)
#ala.train_arr
#ast.trains
#tr1.current_station
#tr1.previous_st

#rou.station_arr
