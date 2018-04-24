class Ex
  def odd num1,num2
    p "#{num1}と#{num2}"
    begin
      @sum = num1 + num2
      # rescue => e
      #   p "例外が発生しました"
      ensure
        p "終了"
    end
  end
    
    def main
      begin
        odd 2,"3"
        p "計算結果は#{@sum}です"
      rescue
        p "例外"
      ensure
        p "終了"
      end
    end
end

ex = Ex.new
ex.main