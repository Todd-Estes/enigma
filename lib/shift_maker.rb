class ShiftMaker

  def make_offset(date = get_date)
    num = ((date.to_i)**2)
    (num.to_s).slice(-4, 4)
  end
end
