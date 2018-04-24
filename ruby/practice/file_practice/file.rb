open("sample.txt", "a+") do |io|
  p io.gets
  p io.readline 
  p io.read
  p io.puts
  p io.write "スクー「Ruby実践」に登壇。"
  p io.write "ﾜあ"
end