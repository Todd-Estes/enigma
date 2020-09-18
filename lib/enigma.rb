require 'date'
class Enigma
  def intitialize
  end

  def get_date
    Date.today.strftime("%m%d%y")
  end

  def generate_key
    rand(99999).to_s.rjust(5, "0")
  end


end
