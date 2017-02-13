class PhoneNumber
  attr_accessor :number

  def initialize(number)
    self.number = clean(number)
  end

  def clean(number)
    cleaned = number.gsub(/[\(\)\. -]/, '') # remove space, dot, dash, parentheses
    if cleaned.size == 10 && cleaned.match(/\d{10}/)
      cleaned
    elsif cleaned.size == 11 && cleaned.match(/1\d{10}/)
      cleaned[1..11]
    else
      '0' * 10
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..9]}"
  end
end
