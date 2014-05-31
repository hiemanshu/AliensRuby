#!/usr/bin/env ruby

require_relative 'Alien.rb'
require_relative 'Exporter.rb'

puts "Please enter the Code Name"
codeName = gets.chomp.strip
puts "Please enter the Blood Color"
bloodColor = gets.chomp.strip
puts "Please enter the No of Antennae"
noOfAnt = gets.chomp.strip
puts "Please enter the No of Legs"
noOfLeg = gets.chomp.strip
puts "PLease enter the Home Planet"
homePlanet = gets.chomp.strip
puts "Please enter the format you want the data in (text/pdf)"
fileFormat = gets.chomp.strip

alien = Alien.new(codeName, bloodColor, noOfAnt, noOfLeg, homePlanet)
exporter = Exporter.new(fileFormat)
exporter.exportDetails(alien)
