
class PassangerWagon
  attr_reader :pass_seats, :type

   def initialize(pass_seats)
     @type = 'passanger'
     @pass_seats = pass_seats
   end
end
