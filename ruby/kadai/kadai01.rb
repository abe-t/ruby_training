class Name
    def initialize(name)
    @name = name
    end
    
    def introdaction
        p "こんにちは,私の名前は#{@name}です"
    end
end

a = Name.new(gets.chomp)
a.introdaction