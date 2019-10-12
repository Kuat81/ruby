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
