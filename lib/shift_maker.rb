class ShiftMaker

  def make_offset(date = get_date)
    num = ((date.to_i)**2)
    (num.to_s).slice(-4, 4)
  end

  def convert_keys(key = create_key)
    key.chars.each_cons(2).map do |pair|
      pair.join.to_i
    end
  end

  def make_shifts(keys = self.create_key, date = self.get_date)
    make_offset(date).chars.map.with_index do |char,ind|
      char.to_i + (convert_keys(keys))[ind]
    end
  end

  # def alphabet
  #  ("a".."z").to_a << " "
  # end

  def shift_characters(character, shift)
    self.alphabet[(self.alphabet.index(character) + shift) % 27]
  end
end
