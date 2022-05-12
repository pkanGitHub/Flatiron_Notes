class Song

    attr_accessor :name, :album, :id

    def initialize(name, album, id)
        @id = id
        @name = name
        @album = album
    end

    def self.create_table
        sql = <<-SQL
            CREATE TABLE IF NOT EXISTS songs (
                id INTEGER PRIMARY KEY,
                name TEXT,
                album TEXT
            )
        SQL
        DB[:conn].execute(sql)
    end
s
end