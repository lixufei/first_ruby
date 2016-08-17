class Numeric
    def to_money
        Money.new(self*100)
    end
end

class Money
    def initialize cent
        @cent
    end
end
p 100.to_money().class
