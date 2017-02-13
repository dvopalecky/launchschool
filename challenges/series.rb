
# = input: string of digits, n
# = output: all the possible consecutive number series
# - of length n in that string

class Series
  def initialize(str)
    @str = str
  end

  def slices(n)
    if n > @str.length
      raise ArgumentError
    else
      out = []
      (0..(@str.length - n)).each do |idx|
        out << @str.chars[idx..(idx + n - 1)].map(&:to_i)
      end
      out
    end
  end
end
