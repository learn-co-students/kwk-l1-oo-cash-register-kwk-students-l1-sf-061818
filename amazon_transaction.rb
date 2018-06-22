# Code your cash register here!
class AmazonTransaction
  
  
  attr_accessor :total, :items
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = 20
  end
  
  # def instance_variable_get(instance_variable)
  #   if instance_variable == :@items
  #     return @items
  #   end
    
  
    
  #   if instance_variable == :@total
  #     return @total
  #   end
    
  #   if instance_variable == :@discount
  #     return @discount
  #   end
  # end
  
  def total
    @total
  end
  
  def total=(total)
    @total = total
  end
  
  def items
    @items
  end
  
  def discount
    @discount
  end
  
  def add_item(item, price, number = 1)
    for i in 1..(number)
      @items.push(item)
      @total += price
    end
  end
  
  def apply_discount
    discount = @discount*0.01
    discount_on_total = ((@total)*(discount)).to_i
    @total = @total - discount_on_total
    if @total == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{total}."
    end
  end
  
    
end









