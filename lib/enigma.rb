require 'date'
require './lib/shift_maker'
class Enigma
  def intitialize
  end

  def get_date
    Date.today.strftime("%d%m%y")
  end

  def create_key
    rand(99999).to_s.rjust(5, "0")
  end

  def encrypt(message, keys = create_key, date = get_date)
    encrypt_hash = {}
    encrypt_hash[:encryption] = ShiftMaker.shift_message(message, keys, date)
    encrypt_hash[:key] = keys
    encrypt_hash[:date] = date
    encrypt_hash
  end

  def decrypt(message, keys = create_key, date = get_date)
    decrypt_hash = {}
    decrypt_hash[:decryption] = ShiftMaker.shift_back_message(message, keys, date)
    decrypt_hash[:key] = keys
    decrypt_hash[:date] = date
    decrypt_hash
  end
end
