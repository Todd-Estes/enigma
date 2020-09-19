require 'date'
class Enigma
  def intitialize
  end

  def get_date
    Date.today.strftime("%d%m%y")
  end

  def create_key
    rand(99999).to_s.rjust(5, "0")
  end

  def make_offset
    num = ((get_date.to_i)**2)
    (num.to_s).slice(-4, 4)
  end

  def convert_keys
    create_key.chars.each_cons(2).map do |pair|
      pair.join.to_i
    end
  end

  def make_shifts
    make_offset.chars.map.with_index do |char,ind|
      char.to_i + convert_keys[ind]
    end
  end

  def alphabet
   ("a".."z").to_a << " "
  end

end
