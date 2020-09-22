require_relative './enigma'
require_relative './shift_maker'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")

incoming_message = handle.read.chomp

encrypted_message = enigma.encrypt(incoming_message)
# require "pry"; binding.pry

handle.close

writer = File.open(ARGV[1], "w")

writer.write(encrypted_message[:encryption])

writer.close

puts "Created 'encrypted.txt' with the key #{encrypted_message[:key]} and date #{encrypted_message[:date]}"
