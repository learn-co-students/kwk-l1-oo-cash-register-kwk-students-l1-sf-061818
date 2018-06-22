# Code your cash register here!

class AmazonTransaction
  attr_accessor :total, :items, :discount, :title, :price, :quantity
  def initialize (discount = 0, items = [], total = 0)
    @total = total
    @items = items
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    while quantity > 0
      items.push(title)
      quantity = quantity - 1
    end
     
  end
  
  def apply_discount
    
    if @discount == 0
      return "There is no discount to apply."
    end
    @discount = @discount.to_f / 100
    total = @total*@discount
    @total = @total - total
    return "After the discount, the total comes to $#{@total.to_i}."
  end
end 

puts @items
