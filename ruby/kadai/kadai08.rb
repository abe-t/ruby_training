class Calender
  
  require "date"
  #初期値に年、月、日を入れる
  def initialize  year,month,day
    # 入力したものをDate型に変え変数に入れる
    @today = Date.strptime("#{year}-#{month}-#{day}")
    # 入力した月の最初の日を変数に入れる
    @first = Date.new(@today.year, @today.month, 1)
    # 入力した月の最後の日を変数に入れる
    @last = Date.new(@today.year, @today.month, -1)
  end
  
  # 実行
  def calender_exe
    # 最初の日の曜日を変数に入れる
    wday = @first.wday
    # 最初の日の月と年を表示
    puts @first.strftime("%B %Y")
    # 表示部分
    puts "Sun Mon Tue Wed Thu Fri Sat"
    # 曜日の分だけ空白を入れる
    print "    " * wday
    # 月初めから最後まで繰り返す
    @first.day.upto(@last.day) do |n|
      # 書式と空白を指定して表示
      printf("%2d  ", n)
      #曜日に1を足す
      wday += 1
      # 土曜になったら日曜に戻す
      if wday == 7
        # 改行
        puts
        wday = 0
      end
    end
    #改行
    puts
  end
end

a = Calender.new(gets.chomp,gets.chomp,gets.chomp)
a.calender_exe