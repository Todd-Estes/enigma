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

  def offsets_plus_keys(offsets, keys)
    offsets.chars.map.with_index do |char,ind|
      char.to_i + keys[ind]
    end
  end

  def make_shifts
    offsets_plus_keys(make_offset, convert_keys)
  end
end
