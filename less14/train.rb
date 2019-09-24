require_relative 'route'

class Train

  def initialize(number)
    @number = number
    @amount_wagon = []
  end
  def station_route(route)
    @route = route
    @current_st = @route.stations.first
    @current_st.accept_train(self)
  end

  def current_station
    @current_st
  end

  def next_st
     @route.stations[current_st_index + 1]
  end

  def previous_st
     @route.stations[current_st_index - 1]
  end

  def go_next_st
    return if @current_st == @route.stations.last
    move(next_st)
  end

  def go_back_st
    return if @current_st == @route.stations.first
    move(previous_st)
  end

  protected
  # методы вызываются др методами и обращаться пользователю к ним нет необходимости
  def current_st_index
    @route.stations.index(@current_st)
  end

  def move(station)
    return unless @current_st && @route
    @current_st.sent_train(self)
    @current_st = station
    @current_st.accept_train(self)
  end

end
