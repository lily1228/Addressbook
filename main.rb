#!/usr/bin/ruby
require "AddressBook"
require "rubygems"
require "plist"
myab=AddressBook.new
myab.addContact("Lily", "Garipova", "28|82", "718-431-5707", "508", "Fremont", 1, [2])
myab.addContact("Radif", "Sharafullin", "12|83", "718-290-0395", "508", 'Fremont', 2, [1])
myab.addContact("Camille", "Garipova", "03|06", "777-888-555", "508", "Fremont", 3, [2,1])
myab.addContact("Adele", "Garipova", "11|09", "777-333-555", "508", "Fremont", 4, [3,1])

aFile=File.new("mystring.txt","w")
aFile.puts myab.contacts
aFile.close

puts myab.to_h.to_plist

afile=File.new("myab.plist", "w")
afile.puts myab.to_h.to_plist
afile.close