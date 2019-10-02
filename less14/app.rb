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

private
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
    puts "11. Assign Route"
    puts "12. go_next_station"
    puts "13. go_back_station"
    puts "14. List Stations"
    puts "15. Trains"
    puts "16. Wagons"
    puts "17. Routes"
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
        assign_route
      when 12
        go_next_station
      when 13
        go_back_station
      when 14
        stations
      when 15
        trains
      when 16
        wagons
      when 17
        routes
    end
  end

  def create_station
    p "Enter Name Station"
    @stations << Station.new(gets.chomp)
  end

  def create_route
    p "choice start and finish stations"
    @stations.each.with_index(1){|station, index| p"#{index}. #{station.name}"}
    st1 = @stations[gets.chomp.to_i - 1]
    st2 = @stations[gets.chomp.to_i - 1]
    @routes << Route.new(st1, st2)
  end

  def add_station_route
    p "Please choice route"
    @routes.each.with_index(1){|route, index| p "#{index}. #{route}"}
    choice = @routes[gets.chomp.to_i - 1]
    
    p "Please choise added station"
    @stations.each.with_index(1){|station, index| p"#{index}. #{station.name}"}
    choice.add_station(@stations[gets.chomp.to_i - 1])
  end

  def delete_station_route
    p "Please choice route"
    @routes.each.with_index(1){|route, index| p "#{index}. #{route}"}
    choice = @routes[gets.chomp.to_i - 1]
    
    p "Please choice deleted station"
    choice.stations.each.with_index(1){|station, index| p "#{index}. #{station.name}"}
    choice.del_station(@stations[gets.chomp.to_i - 1])
  end

  def create_passanger_train
    p "Enter Passanger Train Number"
    @trains << PassangerTrain.new(gets.chomp.to_s)
  end

  def create_cargo_train
    p "Enter Cargo Train Number"
    @trains << CargoTrain.new(gets.chomp.to_s)
  end

  def add_wagon_train
    p "Please choise train"
    @trains.each.with_index(1){|train, index| p "#{index}. #{train}"}
    train = @trains[gets.chomp.to_i - 1]
    
    p "Please choise added wagon"
    @wagons.each.with_index(1){|wagon, index| p "#{index}. #{wagon}"}
    train.add_wagon(@wagons[gets.chomp.to_i - 1])
  end

  def delete_wagon_train
    p "Please choise train"
    @trains.each.with_index(1){|train, index| p "#{index}. #{train}"}
    train = @trains[gets.chomp.to_i - 1]
    
    p "Please choise for delete wagon"
    train.amount_wagons.each.with_index(1){|wagon, index| p "#{index}. #{wagon}"}
    train.delete_wagon(@wagons[gets.chomp.to_i - 1])
  end

  def create_passanger_wagon
    p "Enter Passanger Seats"
    @wagons << PassangerWagon.new(gets.chomp.to_s)
  end

  def create_cargo_wagon
    p "Enter Cargo Volume"
    @wagons << CargoWagon.new(gets.chomp.to_s)
  end

  def assign_route
    p "Choice please train"
    @trains.each.with_index(1){|train, index| p "#{index}. #{train}"}
    choice = @trains[gets.chomp.to_i - 1]
    
    p "Choice please route"
    @routes.each.with_index(1){|route, index| p "#{index}. #{route}"}
    choice.station_route(@routes[gets.chomp.to_i - 1])
  end

  def go_next_station
    p "Choice please train"
    @trains.each.with_index(1){|train, index| p "#{index}. #{train}"}
    choice = @trains[gets.chomp.to_i - 1]
    choice.go_next_st
  end

  def go_back_station
    p "Choice please train"
    @trains.each.with_index(1){|train, index| p "#{index}. #{train}"}
    choice = @trains[gets.chomp.to_i - 1]
    choice.go_back_st
  end

  def stations
    @stations.each{|station| p station.name}
    @stations.each{|station| p station.trains}
  end

  def trains
    p @trains
  end

  def wagons
    p @wagons
  end

  def routes
    p @routes
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
