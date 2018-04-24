=begin
class Hoge
    def addition
        a = 4
        b = 3
        
        @sum = 0
        
        @sum = a + b
    end
    
    def putsum
        puts @sum
    end
end

@hoge = Hoge.new
@hoge.addition
@hoge.putsum
=end

class Child
    
    def initialize(name)
        @name = name
        @age = age
    end
    
#    def initialize(name,age)
#        @name = name
#        @age = age
#    end
    
    def hello
        puts "#{@name}さんおはよう"
    end
    
#    def hello2
#        puts "#{@name}さんは#{@age}歳です"
#    end
end

Child.new("聖")
Child.new("真司")
Child.new("亮洋")
