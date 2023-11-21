require "sqlite3"

class Test
  def exec
    (1..300).each do |i|
      p i
      select
    end
  end

  def select
    db = SQLite3::Database.new "test.db"
    db.execute( "select * from numbers;" )
  end
end
