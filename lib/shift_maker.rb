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

  def alphabet
   ("a".."z").to_a << " "
  end

  def shift_characters(character, shift)
    self.alphabet[(self.alphabet.index(character) + shift) % 27]
  end

  def shift_back_characters(character, shift)
    self.alphabet[(self.alphabet.index(character) - shift) % 27]
  end

  def shift_message(message, keys, date)
    shift_values = make_shifts(keys, date)
    message.chars.reduce("") do |new_string, char|
      if !alphabet.include?(char)
        new_string + char
      else
        shift_values.rotate!(1) unless new_string.empty?
        new_string.concat(shift_characters(char, shift_values.first))
      end
    end
  end

  def shift_back_message(message, keys, date)
    shift_values = make_shifts(keys, date)
    message.chars.reduce("") do |new_string, char|
      if !alphabet.include?(char)
        new_string + char
      else
        shift_values.rotate!(1) unless new_string.empty?
        new_string.concat(shift_back_characters(char, shift_values.first))
      end
    end
  end
end
