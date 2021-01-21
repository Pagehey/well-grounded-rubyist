class Ticket
  VENUES = %w(Town\ Hall Convention\ Center Fairgrounds)

  def initialize(venue)
    if VENUES.include? venue
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
  rescue ArgumentError
    until VENUES.include? @venue
      puts "Please provide venue as one of these:"
      puts VENUES
      @venue = gets.chomp
    end
  end

  def testy
    puts "rescued"
  end

  def venue
    @venue
  end

  def date= date
    if /\A(\d{2}\/){2}\d{2}\z/.match date
      @date = date
    else
      puts "Please provide a date with forrmat 'dd/mm/yy'"
    end
  end

  def date
    @date
  end

  def price= amount
    @price = amount.to_f
  end

  def price
    @price
  end

  def discount amount
    price * (100 - amount) / 100
  end

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end

ticket = Ticket.new "Town Halll"
ticket.date = "11/12/13"
ticket.date = "11/12/1913"
ticket.date = "pizza"

ticket.price = 100

puts "The ticket for #{ticket.venue} has been discounted to 15% to $#{ticket.discount(15)}."