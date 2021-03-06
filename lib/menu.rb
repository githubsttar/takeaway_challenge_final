class Menu

  attr_reader :display, :my_lunch, :total

  def initialize

    @display  = {
      "3"     =>  "Soup",
      "4"     =>  "Pasta",
      "6"     =>  "Bangers and Mash",
      "5"     =>  "BLT  Sandwich",
      "7"     =>  "Fish n Chips"
    }
    @my_lunch = []
    @total    = 0
  end

  def calculate

    @display.each do |key, value|
      if key.to_i < 6
        @my_lunch.push(key)
      end
    end

    @my_lunch.each do |x|
      @total += x.to_i
    end

    @total
  end
end
