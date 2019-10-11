module InstanceCounter

  private
  module Register_Instance
    @@count_obj = 0

    def count_obj
      @@count_obj += 1
    end
  end

  public
  module Instances

    include Register_Instance
    
    def count
      @@count_obj
    end
  end
end
