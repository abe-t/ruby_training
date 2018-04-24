class Uruu
  
  def initialize year
    @year = year
  end
  
  def keisan
    if @year % 100 == 0 && @year % 4 != 0
      p "#{@year}年はうるう年じゃありません"
    else
      if @year % 4 != 0
        p "#{@year}年はうるう年じゃありません"
      else
        p "#{@year}年はうるう年です"
      end
    end
    
  end
  
end

a = Uruu.new(gets.to_i)
a.keisan
