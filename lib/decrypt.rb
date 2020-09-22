require_relative './enigma'
require_relative './shift_maker'


enigma = Enigma.new
handle = File.open(ARGV[0], "r")
encryption_key = ARGV[2]
encryption_date = ARGV[3]
encryption_message = handle.read.chomp
decrypted_message = enigma.decrypt(encryption_message, encryption_key, encryption_date)
handle.close
writer = File.open(ARGV[1], "w")
writer.write(decrypted_message[:decryption])
writer.close
puts "Created 'decrypted.txt' with the key #{encryption_key} and date #{encryption_date}"
