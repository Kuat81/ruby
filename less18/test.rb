require_relative 'Cart'
require_relative 'Gamer'

class App
	def initialize
		@gamers = []
    	cart
		dealer
		@gamer
	end

	def start
    	loop do
      choice_interface
      @choice = gets.chomp.to_i
    	break if @choice == 0
      process_choice
    	end
  	end

	def choice_interface
    	puts "1. Enter Name"
      	puts "2. Distribution"
    	puts "3. New Cart"
    	puts "4. Dealer game"
    	puts "0. Exit"
  	end

  def process_choice
    case @choice
      when 1
        gamer
      when 2
        distribution
      when 3
       	new_cart
      when 4
       	dealer_game
   	end
  end

  def cart
    @cart = Cart.new
  end

  def dealer
  	@dealer = Gamer.new('Dealer')
    @gamers << @dealer
  end

  def gamer
  		p 'Please enter player name'
      @gamers << Gamer.new(gets.chomp.to_s)
  end

  def distribution 
    @gamers.each do |user| 
      print user.name; user.game_cart(rund_cart)
  end
  
  end

  def new_cart
    @gamers.each.with_index(1){|user, index| p "#{index}. #{user.name}"}
    @gamer = @gamers[gets.chomp.to_i - 1]

    if @gamer.deck_count != 3 #|| user.game_score <= 21
      @gamer.game_cart(rund_cart)
      #user.deck_show
    else   
      dealer_game    
    end
  end

  def dealer_game
    
    while @dealer.deck_count != 3 #@dealer.game_score <= 17
  	  @dealer.game_cart(rund_cart)
  	end

    print "Dealer: "
    @dealer.game_score
    names('@gamer')
    @gamer.game_score

    @gamers.delete(@gamer)
  end

  def names(gamer_name)
  	@gamers.each do |user| 
  		user == gamer_name
  		p user.name
  	end
  end

  def rund_cart
    p @cart.take_cart
  end
end

App.new.start
