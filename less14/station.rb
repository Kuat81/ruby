require_relative 'passanger_train'
require_relative 'cargo_train'

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
end
