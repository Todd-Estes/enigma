require_relative './enigma'
require_relative './shift_maker'


$ ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 240818
Created 'decrypted.txt' with the key 82648 and date 240818


enigma = Enigma.new

handle = File.open(ARGV[0], "r")

message_key = ARGV[2]

message_ = ARGV[3]

incoming_message = handle.read.chomp

encrypted_message = enigma.encrypt(incoming_message)
# require "pry"; binding.pry

handle.close

writer = File.open(ARGV[1], "w")

writer.write(encrypted_message)

writer.close

puts "Created 'encrypted.txt' with the key #{encrypted_message[:key]} and date #{encrypted_message[:date]}"
