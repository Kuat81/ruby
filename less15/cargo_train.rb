require_relative 'train'
require_relative 'cargo_train'

class CargoTrain < Train
  attr_reader :number, :amount_wagons, :type

  def initialize(number)
    super
    @type = 'cargo'
    @amount_wagons = []
    @@trains << self
  end

  def add_wagon(wagon)
    return p "Error" if wagon.class != CargoWagon
    @amount_wagons << wagon
  end

  def delete_wagon(wagon)
    return p "Error" if wagon.class != CargoWagon
    @amount_wagons.delete(wagon)
  end
end
