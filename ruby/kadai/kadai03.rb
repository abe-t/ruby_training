class Usagi
  
  def initialize(nensu)
    @nensu = nensu
  end
  
  def usagihueru
    kodomo = 1
    otona = 0
    hoge = 0
    nen = 1
    while @nensu != 0
      p "#{nen}年目"
      p "大人のウサギは#{otona}匹です"
      p "子供のウサギは#{kodomo}匹です"
      if otona == 0
        kodomo = 1
        otona = 1
      else
        hoge = kodomo
        kodomo = otona
        otona = otona + hoge
      end
      nen += 1
      @nensu -= 1 
    end
  
  end
end

a = Usagi.new(gets.to_i)
a.usagihueru