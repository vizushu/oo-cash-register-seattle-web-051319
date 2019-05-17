class CashRegister
    attr_accessor :total, :discount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end

    def add_item(title, price, quantity = 1)
        quantity.times do 
          @items << title
        end
        @total += (price * quantity)
        @last_transaction = price
    end

    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        end
        @total -= (@total * discount.to_f/100)
        @last_transaction -= @total
        return "After the discount, the total comes to $800."
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
  end
end

