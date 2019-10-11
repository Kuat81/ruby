require_relative 'train'
require_relative 'cargo_train'
require_relative 'manufacturer'

class CargoTrain < Train
  include Manufacturer
  extend InstanceCounter::Instances
  include InstanceCounter::Register_Instance
  attr_reader :number, :amount_wagons, :type

  def initialize(number)
    super
    @type = 'cargo'
    @amount_wagons = []
    @@trains << self
    PassangerTrain.count_obj
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
