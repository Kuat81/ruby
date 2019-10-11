require_relative 'manufacturer'

class CargoWagon
  include Manufacturer
  extend InstanceCounter::Instances
  include InstanceCounter::Register_Instance
  attr_reader :volume, :type

  def initialize(volume)
    @type = 'cargo'
    @volume = volume
    PassangerTrain.count_obj
  end
end
