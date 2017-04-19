class Palindromes
  attr_accessor :min_factor, :max_factor, :palindromes

  def initialize(settings = {})
    self.min_factor = settings[:min_factor] || 1
    self.max_factor = settings[:max_factor] || 1
    # Hash where key = palindrome value, value = Palindome object
    self.palindromes = {}
  end

  def generate
    # loop through all combinations of factors where first < second
    (min_factor..max_factor).each do |first_factor|
      (min_factor..max_factor).each do |second_factor|
        next unless first_factor <= second_factor

        value = first_factor * second_factor
        if palindrome?(value)
          add_palindrome(value, first_factor, second_factor)
        end
      end
    end
    self.palindromes = palindromes.sort.to_h
  end

  def add_palindrome(value, first_factor, second_factor)
    if palindromes[value]
      # palindrom object already exists
      palindromes[value].factors << [first_factor, second_factor]
    else
      palindromes[value] = Palindrome.new(value, first_factor,
                                          second_factor)
    end
  end

  def largest
    palindromes.values.last
  end

  def smallest
    palindromes.values.first
  end

  private

  def palindrome?(number)
    str_number = number.to_s
    str_number == str_number.reverse
  end
end

class Palindrome
  attr_accessor :value, :factors

  def initialize(value, first_factor, second_factor)
    self.value = value
    self.factors = [[first_factor, second_factor]]
  end
end
