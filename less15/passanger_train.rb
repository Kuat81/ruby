require_relative 'station'
require_relative 'train'
require_relative 'passanger_wagon'

class PassangerTrain < Train
  attr_reader :number, :amount_wagons, :type

  def initialize(number)
    super
    @type = 'passanger'
    @amount_wagons = []
    @@trains << self
  end

  def add_wagon(wagon)
    return p "Error" if wagon.class != PassangerWagon
    @amount_wagons << wagon
  end

  def delete_wagon(wagon)
    return p "Error" if wagon.class != PassangerWagon
    @amount_wagons.delete(wagon)
  end
end
