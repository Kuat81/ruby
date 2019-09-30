require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'passanger_train'
require_relative 'cargo_train'
require_relative 'passanger_wagon'
require_relative 'cargo_wagon'

class App
  def initialize
    @stations = []
    @routes = []
    @trains = []
    @wagons = []
  end

  def start
    loop do
      choice_interface
      @choice = gets.chomp.to_i
    break if @choice == 0
      process_choice
    end
  end

  def choice_interface
    puts "1. Enter Station"
    puts "2. Enter Passanger Train"
    puts "3. Enter Cargo Train"
    puts "4. Enter Passanger Wagon"
    puts "5. Enter Cargo Wagon"
    puts "6. Enter Route"
    puts "7. Add Station"
    puts "8. Delete Station"
    puts "9. Added Wagon"
    puts "10. Delete Wagon"
    puts "11. Assing Route"
    puts "12. go_next_station"
    puts "13. go_back_station"
    puts "14. List Stations"
    puts "0. Exit"
  end

  def process_choice
    case @choice
      when 1
        create_station
      when 2
        create_passanger_train
      when 3
        create_cargo_train
      when 4
        create_passanger_wagon
      when 5
        create_cargo_wagon
      when 6
        create_route
      when 7
        add_station_route
      when 8
        delete_station_route
      when 9
        add_wagon_train
      when 10
        delete_wagon_train
      when 11
        assing_route
      when 12
        go_next_station
      when 13
        go_back_station
      when 14
        stations
    end
  end

  def create_station
    p "Enter Name Station"
    @stations << Station.new(gets.chomp)
  end

  def create_route
    p "choice start and finish stations"
    @stations.each.with_index(){|station, index| p"#{index}. #{station.name}"}
    st1 = @stations[gets.chomp.to_i]
    st2 = @stations[gets.chomp.to_i]
    rou = Route.new(st1, st2)
    @routes << rou
  end

  # def create_new_route
  #   loop do
  #     p "choice stations"
  #     @route.stations.each.with_index(){|station, index| p"#{index}. #{station.name}"}
  #     choice = gets.chomp.to_i
  #     rou =[] << @stations[choice]
  #   break if choice == 0
  #     @routes << rou
  #   end
  # end

  def add_station_route
    p "Please choice route"
    @routes.each.with_index{|route, index| p "#{index}. #{route}"}
    choice = @routes[gets.chomp.to_i]
    p "Please choise added station"
    @stations.each.with_index(){|station, index| p"#{index}. #{station.name}"}
    choice.add_station(@stations[gets.chomp.to_i])
  end

  def delete_station_route
    p "Please choice route"
    @routes.each.with_index{|route, index| p "#{index}. #{route}"}
    choice = @routes[gets.chomp.to_i]
    p "Please choice deleted station"
    choice.stations.each.with_index{|station, index| p "#{index}. #{station.name}"}
    choice.del_station(@stations[gets.chomp.to_i]) # не удаляет станцию
  end

  def create_passanger_train
    p "Enter Passanger Train Number"
    num = gets.chomp.to_s
    tr = PassangerTrain.new(num)
    @trains << tr
  end

  def create_cargo_train
    p "Enter Cargo Train Number"
    num = gets.chomp.to_s
    tr = CargoTrain.new(num)
    @trains << tr
  end

  def add_wagon_train
    p "Please choise train"
    @trains.each.with_index{|train, index| p "#{index}. #{train}"}
    train = @trains[gets.chomp.to_i]
    p "Please choise added wagon"
    @wagons.each.with_index{|wagon, index| p "#{index}. #{wagon}"}
    train.add_wagon(@wagons[gets.chomp.to_i])
  end

  def delete_wagon_train
    p "Please choise train"
    @trains.each.with_index{|train, index| p "#{index}. #{train}"}
    train = @trains[gets.chomp.to_i]
    p "Please choise for delete wagon"
    train.amount_wagons.each.with_index{|wagon, index| p "#{index}. #{wagon}"}
    train.delete_wagon(@wagons[gets.chomp.to_i])
  end

  def create_passanger_wagon
    p "Enter Passanger Seats"
    num = gets.chomp.to_s
    wagon = PassangerWagon.new(num)
    @wagons << wagon
  end

  def create_cargo_wagon
    p "Enter Cargo Volume"
    num = gets.chomp.to_s
    wagon = CargoWagon.new(num)
    @wagons << wagon
  end

  def assing_route
    p "Choice please train"
    @trains.each.with_index{|train, index| p "#{index}. #{train}"}
    choice = gets.chomp.to_i
    @routes.each.with_index{|route, index| p "#{index}. #{route}"}
    choice.station_route(@routes[gets.chomp.to_i])
  end

  def go_next_station
    go_next_st
  end

  def go_back_station
    go_back_st
  end

  def stations
    @stations.each{|station| p station.name}
    @stations.each{|station| p station.trains}
  end
end

App.new.start

# Создавать станции +
# Создавать поезда +
# Создавать маршруты и управлять станциями в нем (добавлять, удалять) +
# Назначать маршрут поезду +
# Добавлять вагоны к поезду +
# Отцеплять вагоны от поезда +
# Перемещать поезд по маршруту вперед и назад +
# Просматривать список станций и список поездов на станции +
