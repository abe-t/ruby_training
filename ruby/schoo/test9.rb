class Exception
  
  def divide_error x,y
    
    begin
      raise x.inspect
      z = x / y
      p "答えは#{z}"
    rescue => e
      p "ぜろでわれません"
      p e.class
    ensure
      p "#{x}を#{y}でわりました"
    end
    
  end
  
  def input_error x,y
    
    begin
      x + y
    rescue => e
      p "No!!"
      p e
    ensure
      p "Yes!!"
    end
    
  end
  
end

test = Exception.new
test.divide_error 4,2
#test.input_error 1,"2"