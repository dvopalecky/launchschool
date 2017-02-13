# Minesweeper

class ValueError < StandardError
end

class Board
  def self.transform(input)
    validate(input)
    count_and_edit(input)
  end

  def self.validate(input)
    raise ValueError unless valid_row_length?(input) &&
                            valid_first_and_last_rows?(input) &&
                            valid_middle_rows?(input)
  end

  def self.valid_row_length?(input)
    input.all? { |row| row.length == input.first.length }
  end

  def self.valid_first_and_last_rows?(input)
    input.first =~ /^\+\-+\+$/ &&
    input.last =~ /^\+\-+\+$/
  end

  def self.valid_middle_rows?(input)
    input[1..-2].all? { |row| row =~ /^\|[\* ]+\|$/ }
  end

  def self.count_and_edit(matrix)
    # matrix is array of strings
    matrix_edited = matrix
    nb_rows = matrix.size
    nb_columns = matrix.first.length
    (1..(nb_rows-2)).each do |row|
      (1..(nb_columns-2)).each do |col|
        count_mines = count_mines_around_cell(matrix, row, col)
        if count_mines > 0 && matrix[row][col] != '*'
          matrix_edited[row][col] = count_mines.to_s
        end
      end
    end
    matrix_edited
  end

  def self.count_mines_around_cell(matrix, row, col)
    # counts '*' in 9 cells around cell [row][column]
    joined = matrix[(row-1)..(row+1)].map { |r| r[(col-1)..(col+1)] }.join
    joined.scan(/\*/).size
  end
end
