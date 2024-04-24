# frozen_string_literal: true

# Write the SQL queries to answer these questions:

# 1. List all artists (only names)
require 'sqlite3' 
db = SQLite3::Database.new("./jukebox.sqlite")

# query = "
# SELECT name
# FROM artists;
# "
# results = db.execute(query)
# p results.flatten

# 2. Count the number of tracks that are shorter than 2 minutes
# GET THE COUNT OF ALL TRACKS
# milliseconds * 60_000

# results = db.execute('SELECT COUNT(*) FROM tracks WHERE milliseconds < 120000')

# WHERE THE milliseconds ARE SHORTER THAN 2 MINUTES
# p results.flatten

# 3. List the first ten albums of the Jukebox DB, sorted alphabetically

# SQL KEYWORDS
# SELECT
# INSERT INTO
# WHERE
# ORDER BY

results = db.execute('SELECT title FROM albums ORDER BY title LIMIT 10')

p results.flatten
