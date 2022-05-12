require 'sqlite3'
require_relative '../lib/song.rb'

DB = {:conn => SQLITE3::Database.new("db/music.db")} 
# This will create a new database called music.db, stored inside the 
# db subdirectory of our app and it will return a Ruby object that represents 
# the connection between our Ruby program and our newly-created SQL database.

#<SQLite3::Database:0x007f9d6c294508
# @authorizer=nil,
# @busy_handler=nil,
# @collations={},
# @encoding=nil,
# @functions={},
# @readonly=false,
# @results_as_hash=nil,
# @tracefunc=nil,
# @type_translation=nil>