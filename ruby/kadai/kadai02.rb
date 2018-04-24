class Keisan
  
  #初期値
  def initialize(num)
    #受け取った値をインスタンス変数に
    @num = num
    #最初から入力した分だけの配列を作成
    @array = []
    i = 1
    @num.times do
      @array << i
      i += 1
    end
  end
  
  #総和を求めるメソッド
  def keisan_sum
    #総和を格納する変数
    sum = 0
    #配列数だけ繰り返す
    @array.each do |n|
      sum += n
    end
    #総和を表示する
    p sum
  end
  
  #奇数を求めるメソッド
  def keisan_odd
    #奇数の配列を宣言
    odd = []
    #配列数だけ繰り返す
    @array.each do |n|
      if n % 2 == 1
        odd << n
      end
    end
    #奇数の配列を表示する
    p odd
  end
  
  #たまたまできた素数を求めるメソッド
  def keisan_prime
    #素数を配列を宣言
    prime = []
    #配列数だけ繰り返す
    @array.each do |n|
      #2だけは入れる
      if n == 2
        prime << n 
      #素数の配列の数が０以上の時に
      elsif prime.length  > 0
        #カウンタを宣言
        count = 0
        #カウンタと素数の配列数が違う間ループする
        while count != prime.length
          #割り切れた時点で終了
          break if n % prime[count] == 0
          count += 1
          #最後の配列数かつあまりが出た場合
          if prime.length == count &&
             n % prime[prime.length-1] != 0
            #素数の配列にnを入れる
            prime << n
          end  
        end
      end
    end
    #素数の配列を表示する
    p prime
  end
  
  #前回のをメソッド化
  def keisan_prime1
    #素数の配列を宣言
    prime = []
    #マジックナンバーを使用する
    @array.each do |n|
      if n % 2 != 0 &&
         n != 1 &&
         n % 3 != 0 &&
         n % 5 != 0 &&
         n % 7 != 0 &&
        prime << n
      elsif n == 2 ||
            n == 3 ||
            n == 5 ||
            n == 7
        prime << n
      end
    end
    #素数の配列を表示する
    p prime
  end
  
end

a = Keisan.new(gets.to_i)
a.keisan_sum
a.keisan_odd
a.keisan_prime