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
    p week = {mon:0,tue:0,wed:0,thu:0,fri:0,sat:0,sun:0}
    p yobi = ["sun","mon","tue","wed","thu","fri","sat",]
    @csv_data.each do |data|
    week[:"#{yobi[Date.strptime(data["勤務日"]).wday]}"] += data["作業時間"].to_f
    end
    p week
  end
end

a = Week.new(gets.chomp)
a.week_sum
