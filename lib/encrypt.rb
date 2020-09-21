require_relative './enigma'
# require './enigma'
require_relative './shift_maker'
# require './shift_maker'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")

incoming_message = handle.read.chomp

encrypted_message = enigma.encrypt(incoming_message)

handle.close

writer = File.open(ARGV[1], "w")

writer.write(encrypted_message)

writer.close
