# Code your cash register here
class AmazonTransaction 
  def initialize (discount = 0, total = 0, items = [])
    @total = total 
    @items = items 
    @discount = discount 
  end 
  def total=(total)
    @total = total
  end 
  def total 
    @total 
  end 
  def items 
    @items 
  end 
  def discount 
    @discount
  end
  def add_item (title, price, quantity = 1)
    # total.to_i = total.to_i  + price.to_i 
    @total += price*quantity
    while quantity > 0 
      @items << title
      quantity = quantity - 1 
    end 
     
  end 
  def apply_discount
    if @discount == 0 
      return "There is no discount to apply."
    else 
      @discount = @discount * 0.01
      @total = @total - (@total * @discount)
      @total = @total.to_i
      return "After the discount, the total comes to $#{total}."
    end
  end 
  def items 
    return @items 
  end 
end 