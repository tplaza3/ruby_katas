require "pry"

module StringCalculator
  
  def self.add(x)
    sum = 0
    arr = x.split
    arr.each do |i|
      sum += i.to_i
    end
    sum
  end
  
  def self.add2(x)
    sum = 0
    arr = x.split
    arr.each do |i|
      if i.to_i > 1000  
        
      else
        sum += i.to_i
      end
    end
    sum
  end
  
  
  def self.valid(string)
    begin
      sum = 0
      arr = string.split
      arr.each do |i|
        if i.to_i < 0
           raise "Negatives not allowed"
        else
          sum += i.to_i
        end
      end
    end
    sum
  end
  
  def self.valid2(string)
    begin
      sum = 0
      arr = string.split
      arr.each do |i|
        if i.to_i < 0
          raise "Negatives not allowed. #{i} is/are not allowed"
        else
          sum += i.to_i
        end
      end
    end
    sum
  end
    
    
#binding.pry
    
 

end