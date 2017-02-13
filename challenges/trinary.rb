# class for Trinary numbers
# class Trinary
#   def initialize(number)
#     @number = number
#     @number = '0' unless @number.chars.all? { |char| %w(0 1 2).include?(char) }
#   end

#   def to_decimal
#     digits_reversed = @number.chars.map(&:to_i).reverse
#     sum = 0
#     digits_reversed.each_with_index { |digit, idx| sum += digit * (3**idx) }
#     sum
#   end
# end


class Trinary
  # Problem statement is such that we can't use String#to_i. However, even if
  # it were allowed, using this hash makes error detection easier.
  TO_I = { '0' => 0, '1' => 1, '2' => 2 }.freeze

  def initialize(trinary_number_string)
    @trinary_number = trinary_number_string
  end

  def to_decimal
    @trinary_number.each_char.inject(0) { |sum, digit| 3 * sum + TO_I[digit] }
  rescue TypeError
    0
  end
end
