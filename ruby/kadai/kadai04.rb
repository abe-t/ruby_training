class Ishitori
  
  def initialize (sosu,max)
    @max = max
    @sosu = sosu
  end
  
  def game
    teki = []
    max = @max
    while max != 0
      teki << max
      max -= 1
    end
    while @sosu > 0
      p "あなたは何個引きますか?"
      a = gets.to_i
      if @max < a
        p @sosu
      else
        hiku = teki.sample
        @sosu = @sosu - a
        if @sosu <= 0
          p "0以下になったのであなたの負けです"
          break
        end
        p "残りは#{@sosu}個です"
        p "相手は#{hiku}個引きました"
        @sosu = @sosu - hiku
        if @sosu <= 0
          p "0以下になったのであなたの勝ちです"
          break
        end
        p "残りは#{@sosu}個です"
      end
    end
  end
end
p "石の数と、とれる最大値を入力してください"
hoge = Ishitori.new(gets.to_i,gets.to_i)
hoge.game