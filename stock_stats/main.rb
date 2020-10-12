puts("Hello World in Ruby")
puts("Its now #{Time.now}")

class BookInStock #Clase

    attr_reader :isbn
    attr_accessor :isbn

    attr_reader :price
    attr_accessor :price


    

    def initialize(isbn,price) #Special method in ruby
        @isbn = isbn #Variable de instancia
        @price= Float(price) #Variable de instancia y casteo a Float
    end    

    def price_in_cents()
        Integer (price*100 + 0.5)
    end

    def price_in_cents=(cents)
        @price = cents / 100.0
    end

    def to_s
        "ISBN: #{@isbn}, price: #{@price}"
    end    
end

b1 = BookInStock.new("A1",100)
puts(b1)

b2 = BookInStock.new("A2",200)
puts(b2)

b3 = BookInStock.new("A3",300)
puts(b3)

b4 = BookInStock.new("A4",33.80)
puts "b4 ISBN : #{b4.isbn}"
puts "b4 Price: #{b4.price}"
#b4.price = b4.price*0.75
puts "b4 Price change: #{b4.price}"
puts "price in cents #{b4.price_in_cents}"
b4.price_in_cents = 1234
puts "now price: #{b4.price}"
puts "now price in cents: #{b4.price_in_cents}"