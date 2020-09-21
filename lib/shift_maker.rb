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
end
