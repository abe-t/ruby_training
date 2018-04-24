class Directory
  
  def initialize u
    @u = u
  end
    
  
  def dir_read
    
    open(@u) do |f|
      f.each_line do |line|
        p line
      end
    end
    
  end
  
  def dir_write g 

    open(@u,"a+") do |io|
      io.puts g
    end
    
  end
  
end

a = Directory.new("sample.txt")
a.dir_read
a.dir_write(gets.chomp)
