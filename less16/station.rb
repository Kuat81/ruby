require_relative 'passanger_train'
require_relative 'cargo_train'

class Station
  @@stations = []
  @@count = 0

  def self.all
    @@stations.each.with_index(1){|station, index| p "#{index}. #{station.name}"}
    p "total amount: #{@@count}"
  end

  def self.stations
    @@stations
  end

  attr_reader :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
    @@count += 1
    @@stations << self


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
end
