require_relative 'station'
require_relative 'train'
require_relative 'passanger_wagon'

class PassangerTrain < Train
  attr_reader :number, :amount_wagon

  def initialize(number)
    super(number)
    @amount_wagon = []
  end

  def add_wagon(wagon)
    return "Error" if wagon.class != PassangerWagon
    @amount_wagon << wagon
  end

  def delete_wagon(wagon)
    return "Error" if wagon.class != PassangerWagon
    @wagons_amount.delete(wagon)
  end
end
