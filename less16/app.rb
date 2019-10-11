require_relative 'manufacturer'
require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'passanger_train'
require_relative 'cargo_train'
require_relative 'passanger_wagon'
require_relative 'cargo_wagon'

class App
  def initialize
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
    puts "2. Create Train"
    puts "3. Create Wagon"
    puts "4. Enter Route"
    puts "5. Add Station Route"
    puts "6. Delete Station"
    puts "7. Added wagon to train"
    puts "8. Delete Wagon"
    puts "9. Assign Route"
    puts "10. go_next_station"
    puts "11. go_back_station"
    puts "12. List Stations"
    puts "13. Find"
    puts "14. Trains"
    puts "15. list Routes"
    puts "0. Exit"
  end

  def process_choice
    case @choice
      when 1
        create_station
      when 2
        create_train
      when 3
        create_wagon
      when 4
        create_route
      when 5
        add_station_route
      when 6
        delete_station_route
      when 7
        add_wagon_train
      when 8
        delete_wagon_train
      when 9
        assign_route
      when 10
        go_next_station
      when 11
        go_back_station
      when 12
        stations
      when 13
        find
      when 14
        trains
      when 15
        routes
    end
  end

  def create_station
    p "Enter Name Station"
    Station.new(gets.chomp)
  end

  def create_route
    p "choice start and finish stations"
    Station.stations.each.with_index(1){|station, index| p"#{index}. #{station.name}"}

    print "first station: "
    st1 = Station.stations[gets.chomp.to_i - 1]

    print "second station: "
    st2 = Station.stations[gets.chomp.to_i - 1]
    Route.new(st1, st2)
  end

  def add_station_route
    choice_route
    choice = Route.routes[gets.chomp.to_i - 1]

    p "Please choise added station"
    Station.stations.each.with_index(1){|station, index| p"#{index}. #{station.name}"}
    choice.add_station(Station.stations[gets.chomp.to_i - 1])
  end

  def delete_station_route
    choice_route
    choice = Route.routes[gets.chomp.to_i - 1]

    p "Please choice deleted station"
    choice.stations.each.with_index(1){|station, index| p "#{index}. #{station.name}"}
    choice.del_station(choice.stations[gets.chomp.to_i - 1])
  end

  def choice_route
    p "Please choice route"
    Route.routes.each.with_index(1){|route, index| p "#{index}. #{route}"}
  end

  def create_train
    p "Choice Please Train"
    p "1. Passanger Train"
    p "2. Cargo Train"
    choice = gets.chomp.to_i

    case choice
      when 1
       create_passanger_train
      when 2
       create_cargo_train
     end
  end

  def create_passanger_train
    p "Enter Passanger Train Number"
    PassangerTrain.new(gets.chomp.to_s)
  end

  def create_cargo_train
    p "Enter Cargo Train Number"
    CargoTrain.new(gets.chomp.to_s)
  end

  def create_wagon
    p "Choice Please Wagon"
    p "1. Passanger Wagon"
    p "2. Cargo Wagon"
    choice = gets.chomp.to_i

    case choice
      when 1
       create_passanger_wagon
      when 2
       create_cargo_wagon
     end
  end

  def create_passanger_wagon
    p "Enter Passanger Seats"
    @wagons << PassangerWagon.new(gets.chomp.to_s)
  end

  def create_cargo_wagon
    p "Enter Cargo Volume"
    @wagons << CargoWagon.new(gets.chomp.to_s)
  end

  def add_wagon_train
    list_train
    choice = Train.trains[gets.chomp.to_i - 1]

    p "Please choise added wagon"
    @wagons.each.with_index(1){|wagon, index| p "#{index}. #{wagon}"}
    choice.add_wagon(@wagons[gets.chomp.to_i - 1])
  end

  def delete_wagon_train
    list_train
    choice = Train.trains[gets.chomp.to_i - 1]

    p "Please choise for delete wagon"
    choice.amount_wagons.each.with_index(1){|wagon, index| p "#{index}. #{wagon}"}
    choice.delete_wagon(@wagons[gets.chomp.to_i - 1])
  end

  def list_train
    p "Please choise train"
    Train.trains.each.with_index(1){|train, index| p "#{index}. #{train}"}
  end

  def assign_route
    list_train
    train = Train.trains[gets.chomp.to_i - 1]

    p "Choice please route"
    Route.routes.each.with_index(1){|route, index| p "#{index}. #{route}"}
    choice.station_route(@routes[gets.chomp.to_i - 1])
  end

  def go_next_station
    list_train
    train.go_next_st
  end

  def go_back_station
    list_train
    train = Train.trains[gets.chomp.to_i - 1]
    train.go_back_st
  end

  def stations
    Station.all
  end

  def trains
    Train.trains
  end

  def find
    p "Enter number train for find"
    Train.find(gets.chomp.to_s)
  end

  def routes
    Route.all
  end
end

App.new.start

# В классе Station (ЖД станция) создать метод класса all, который возвращает все
# станции (объекты), созданные на данный момент. +

# В классе Train создать метод класса find, который принимает номер поезда
# (указанный при его создании) и возвращает объект поезда по номеру или nil,
# если поезд с таким номером не найден. +

# В классе Route (маршрут) создать метод класса all, который возвращает хэш, в
# котором ключом будет являться каждый созданный на данный момент маршрут, а
# значением к нему - массив станций, из которых состоит этот маршрут.

#теренарные операторы stations = rouute.nil? ? stations : stations
