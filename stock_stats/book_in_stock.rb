class BookInStock

    attr_reader :isbn
    attr_reader :price

    def initialize(isbn,price)
        @isbn = isbn
        @price= Float(price)
    end    
end