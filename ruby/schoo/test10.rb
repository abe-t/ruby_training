# class Hikiniku

#   def hello  lang = "Ruby" , gree
#     puts "#{gree} #{lang}"
#   end
  
# end

# hiki = Hikiniku.new
# hiki.hello "Hello"

# class Modorichi
#   def put_str num
#     if num == 1
#       return "hogehoge"
#     else
#       return "hoihoi"
#     end
#     "uhouho"
#   end
# end

# modo = Modorichi.new
# str = modo.put_str 2
# p str

module MainModule
  def say
    p "hello"
  end
end

module SubModule
  def say
    p "morning"
  end
end

class SubClass
  include SubModule
  def say
    p "good evening"
  end
end

class MainClass < SubClass
  include MainModule
  def say
    p "good night"
  end
end

he = MainClass.new
he.say