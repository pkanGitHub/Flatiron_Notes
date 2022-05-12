ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/students.sqlite"
)

class InterativeRecord

def self.create_table
  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT
    )
  SQL
end
 
# Remember, the previous step has to run first so that `connection` is set!
ActiveRecord::Base.connection.execute(sql)

end

# Link a Student "model" to the database table students
class Student < ActiveRecord::Base
end