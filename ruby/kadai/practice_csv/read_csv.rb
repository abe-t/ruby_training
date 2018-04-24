class Week
  
  require 'csv'
  require 'date'
  
  #最初に検索したいcsvファイルを入力させる
  def initialize file
    @csv_data = CSV.read(file, headers: true)    
  end
  
  #曜日毎の月の作業時間を求めるめそっと
  def week_sum
    #各曜日の変数
    mon = 0
    tue = 0
    wed = 0
    thu = 0
    fri = 0
    sat = 0
    sun = 0
    #最初の勤務日と最後の勤務日を変数に代入
    first_day = @csv_data["勤務日"].last
    last_day = @csv_data["勤務日"].first
    #CSVファイルの行数分だけ繰り返す
    @csv_data.each do |data|
      
      #取得時文字列になっていたのでdate型に変えてケース文で曜日を求める
      case Date.strptime(data["勤務日"]).wday
        when 0 then
          sun += data["作業時間"].to_f
        when 1 then
          mon += data["作業時間"].to_f
        when 2 then
          tue += data["作業時間"].to_f
        when 3 then
          wed += data["作業時間"].to_f
        when 4 then
          thu += data["作業時間"].to_f
        when 5 then
          fri += data["作業時間"].to_f
        when 6 then
          sat += data["作業時間"].to_f
      end
    end
    #表示
    p "#{first_day} - #{last_day} 曜日別作業時間"
    p "MON #{mon}"
    p "TUE #{tue}"
    p "WED #{wed}"
    p "THU #{thu}"
    p "FRI #{fri}"
    p "SAT #{sat}"
    p "SUN #{sun}"
  end
end

a = Week.new(gets.chomp)
a.week_sum