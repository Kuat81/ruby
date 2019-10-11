require_relative 'manufacturer'
require_relative 'instance'

class PassangerWagon
  include Manufacturer
  extend InstanceCounter::Instances
  include InstanceCounter::Register_Instance
  attr_reader :pass_seats, :type

   def initialize(pass_seats)
     @type = 'passanger'
     @pass_seats = pass_seats
     PassangerTrain.count_obj
   end
end
