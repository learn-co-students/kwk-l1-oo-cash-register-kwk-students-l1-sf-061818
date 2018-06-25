# Code your cash register here!
class AmazonTransaction 
  def initialize (discount = 0, items = [], total = 0)
    @total = total
    @items = items 
    @discount = discount 
  end 
  
  def add_item (title, price, quantity=1)
    @total += price*quantity

    while quantity != 0
        @items << title
        quantity -= 1
      end

    
    
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
  
  def apply_discount
    newcount=@discount/100.00
    x = newcount*@total
    @total -= x
    if @discount>0
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
    
end 


