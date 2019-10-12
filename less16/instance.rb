module InstanceCounter

  module ClassMetods
    attr_accessor :instances
  end


  module InstanceMetods
  private
  
    def register_instance
      self.class.instances ||= 0
      self.class.instances += 1
    end
  end

end


class Train
  extend InstanceCounter::ClassMetods
  include InstanceCounter::InstanceMetods

  def initialize
    register_instance
  end
end
