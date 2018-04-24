#数ゲーム１
class Game

  def game_kazu
    # 100個配列に入れる
    arr = (1..100).to_a
    # ランダムな数を偏巣に代入
    ran = arr.sample
    # 答え
    # p ran
    # カウンタ
    count = 0
    # 正解まで繰り返す
    loop do
      # 入力させる
      getter = gets.to_i
      count += 1
      if ran == getter
        break
      elsif ran < getter
        p "#{getter}は正解より大きいです"
      else
        p "#{getter}は正解より小さいです"
      end
    end
    p "正解まで#{count}回答えました"
  end
  
end

#数ゲーム2
class Game2
  
  # 初期値に四桁の重複しないランダムな数値を配列に入れる
  def initialize
    # 0~9までの数値を配列に入れる
    arr_ran = (0..9).to_a
    # 格納する配列を作成
    @arr_q = []
    # 4個入れるまで
    while @arr_q.length != 4
      # 配列の中身をランダムで変数に
      randam = arr_ran.sample
      # 配列に入れる
      @arr_q << randam
      # 入れた配列の中身を消す
      arr_ran.delete(randam)
    end
    p @arr_q
  end

  # 力技で入力した4桁の数値を配列に入れる
  def getter geti
    # 配列の設定
    arr_getter = [0,0,0,0]
    # 4桁目を配列の最初に入れる
    c = 0
    while geti > 999 do
        c += 1
        geti -= 1000
        arr_getter[0] = c
    end
    # 3桁目を配列の2番に入れる
    c = 0
    while geti > 99 do
        c += 1
        geti -= 100
        arr_getter[1] = c
    end
    # 2桁目を配列の3番に入れる
    c = 0
    while geti > 9 do
        c += 1
        geti -= 10
        arr_getter[2] = c
    end
    # 1桁目を配列の最後に入れる
    c = 0
    while geti > 0 do
        c += 1
        geti -= 1
        arr_getter[3] = c
    end
    # 答え
    p arr_getter
  end
  
  # 処理
  def game_kazu2
    # 回数のカウント
    count = 0
    # 数字が合うまでループ
    loop do
    # hitとblowを初期化
    hit = 0
    blow = 0
    count += 1
    # 入れとく
    answer = getter(gets.to_i)
    # 表示用
    an = "#{answer[0]}#{answer[1]}#{answer[2]}#{answer[3]}"
    # カウンタ
    i = 0
      # answer配列の最後までループ
      while i != 4
        # カウンタ
        n = 0
        # @arr_q配列の最後までループ
        while n != 4
          # answerと@arr_qの配列数と中身が一緒だったらhitに入れる
          if answer[i] == @arr_q[n] && i == n
            hit += 1
          # answerと@arr_qの配列の中身がどれか一緒だったらblowに入れる
          elsif answer[i] == @arr_q[n]
            blow += 1
          end
          n += 1
        end
        i += 1
      end
      if hit == 4
        p "#{an} 正解です。正解まで#{count}回答えました。"
        break
      else
        p "#{an} #{hit}Hit #{blow}blow"
      end
    end
  end
end

#a = Game.new
b = Game2.new
#a.game_kazu
b.game_kazu2
