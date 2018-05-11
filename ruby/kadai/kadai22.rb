require 'sqlite3'

class Book
  
  # テーブル作成
  def book_sql_create
    SQLite3::Database.open("book.db") do |db|
      db.execute(<<-SQL)
        CREATE TABLE IF NOT EXISTS Book
        (name TEXT,price INTEGER)
      SQL
    end
  end
  
  # データをinsert
  def book_sql_insert
    SQLite3::Database.open("book.db") do |db|
      db.execute(<<-SQL)
        INSERT INTO Book (name,price)
        VALUES ('楽しいRuby',2600),
               ('優しいRuby',13000),
               ('楽しいC',50000),
               ('優しいC',1000)
      SQL
    end
  end
  
  # priceが10000以上または「楽しい」が入っているものを表示
  def book_sql_select
    SQLite3::Database.open("book.db") do |db|
      db.execute(<<-SQL){|row| p row}
        SELECT *
          FROM Book
         WHERE price > 10000 or name like '%楽しい%'
        SQL
      end
  end
  
  # 名前を昇順にしたものを表示
  def book_sql_name_asc
      SQLite3::Database.open("book.db") do |db|
      db.execute(<<-SQL){|row| p row}
        SELECT *
        FROM Book
        ORDER BY name asc
      SQL
    end
  end

  # 名前を降順にしたものを表示
  def book_sql_price_desc
      SQLite3::Database.open("book.db") do |db|
      db.execute(<<-SQL){|row| p row}
        SELECT *
        FROM Book
        ORDER BY price desc
      SQL
    end
  end

  # nameが楽しいRubyのpriceを2500に変更
  def book_sql_update
      SQLite3::Database.open("book.db") do |db|
      db.execute(<<-SQL)
        UPDATE Book
        SET price = 2500
        WHERE name = '楽しいRuby'
      SQL
    end
  end
  
  # drop table
  def book_sql_drop
    SQLite3::Database.open("book.db") do |db|
      db.execute("DROP TABLE Book")
    end
  end
end

sql = Book.new

# Bookというテーブル作成
sql.book_sql_create

# 課題の内容をinsert
sql.book_sql_insert

# priceが10000以上または「楽しい」が入っているものを表示
sql.book_sql_select

# nameを昇順に並べ替えたものを表示
puts "-----name-asc---------"
sql.book_sql_name_asc
puts "----------------------"

# priceを降順に並べ替えたものを表示
puts "-----price-desc-------"
sql.book_sql_price_desc
puts "----------------------"

# nameが楽しいRubyのpriceを2500に変更
#sql.book_sql_update

sql.book_sql_drop