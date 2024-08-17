# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
# puts "Qualified candidates"
# pp @candidates

puts "\nCandidates ordered by qualy"
pp ordered_by_qualifications(@candidates)