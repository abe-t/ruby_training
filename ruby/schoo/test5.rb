=begin
class Home
    
  def door
    p "ドア"
    p "です。"
  end
  
  def door2( person )
      print "ドアを開けたのは"
      print person
      print "です。\n"
  end
  
end

@home = Home.new
@home.door
@home.door2(gets)

=end

class Headquarters
  def manual
    p "全社マニュアル"
  end
end

class Shop < Headquarters
  def store_manual
    p "店舗マニュアル"
  end
end

@shop = Shop.new
@shop.manual