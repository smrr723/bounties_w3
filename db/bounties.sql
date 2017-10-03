DROP TABLE IF EXISTS bounties;



CREATE TABLE bounties(
  id SERIAL8 PRIMARY KEY,
  species VARCHAR(255),
  homeworld VARCHAR(255),
  danger_level VARCHAR(255),
  collected_by VARCHAR(255)
);






--
-- # Lab
-- #
-- # You are going to make a table for tracking bounties for Space Cowboys.
-- #
-- # An entry in the bounty table must have a selection of 4 of these properties:
-- #
-- # name
-- # species
-- # bounty value
-- # danger level (low, medium, high, ermagerdyerderd)
-- # last known location
-- # homeworld
-- # favourite weapon
-- # cashed_in
-- # collected_by
-- # Tasks
-- #
-- # 1 - Set up your directory structure - DONE
-- # 2 - Create a Ruby file for your Bounty class - DONE
-- # 3 - Write your class definition in the file - initialize, attr_readers, instance variables
-- # 4 - Make the database
-- ➜  pizza_shop psql -f db/pizza_shop.sql -d pizza_shop

-- # 5 - Make a .sql file and write some SQL to create your database table
-- # 6 - Run the .sql file to set up the table (psql -d data_base_name -f file_name.sql)
-- # 7 - Implement save, update and delete methods on your class
-- # 8 - Create console.rb to create some new objects and practice your methods (can do this as you are writing the methods to test them)
-- # 9 - Extensions
-- #
-- # Implement a find method that returns one instance of your class. This should be a self method that takes in a value of one of your chosen properties (do you have to use a map method? Hmm.)
