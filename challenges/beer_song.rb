class BeerSong
  def verse(count_bottles)
    count = count_bottles
    count_after = count == 0 ? 99 : count - 1

    "#{bottles(count).capitalize} of beer on the wall, " \
    "#{bottles(count)} of beer.\n" \
    "#{action(count)}, #{bottles(count_after)} of beer on the wall.\n"
  end

  def verses(from, to)
    out = []
    from.downto(to).each { |i| out << verse(i) }
    out.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def bottles(count)
    case count
    when 2..99
      "#{count} bottles"
    when 1
      "1 bottle"
    when 0
      "no more bottles"
    end
  end

  def action(count)
    case count
    when 2..99
      "Take one down and pass it around"
    when 1
      "Take it down and pass it around"
    when 0
      "Go to the store and buy some more"
    end
  end
end
