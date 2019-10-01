class CargoWagon
  attr_reader :volume, :type

  def initialize(volume)
    @type = 'cargo'
    @volume = volume
  end
end
