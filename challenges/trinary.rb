class Trinary
  def initialize(number)
    @number = number
    @number = '0' unless @number.chars.all? { |char| %w(0 1 2).include?(char) }
  end

  def to_decimal
    digits_reversed = @number.chars.map(&:to_i).reverse
    sum = 0
    digits_reversed.each_with_index { |digit, idx| sum += digit * (3**idx) }
    sum
  end
end
