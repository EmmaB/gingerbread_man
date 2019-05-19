class Head
  def to_pattern
    instructions.each { |i| i.to_pattern }
  end

  def to_ascii
    instructions.each { |i| i.to_ascii }
  end

  private

  def instructions
    [
      CastOnRow.new(cast_on: 5),
      Row.new(Enlarge.new(4), Knit.new(1)),
      Row.new(Knit.new(2), Enlarge.new(6), Knit.new(1)),
      Row.new(Purl.new(15)),
      Row.new(
        Knit.new(2),
        6.times.map { [ Knit.new(1), Enlarge.new(1) ] },
        Knit.new(1)
      ),
      Row.new(Purl.new(21)),
      Row.new(
        Knit.new(2),
        6.times.map { [ Knit.new(2), Enlarge.new(1) ] },
        Knit.new(1)
      ),
      Row.new(Purl.new(27)),
      Row.new(
        Knit.new(2),
        6.times.map { [ Knit.new(3), Enlarge.new(1) ] },
        Knit.new(1)
      ),
      Row.new(Purl.new(33)),
      Row.new(
        Knit.new(2),
        6.times.map { [ Knit.new(4), Enlarge.new(1) ] },
        Knit.new(1)
      ),
      Row.new(Purl.new(39)),
      Row.new(
        Knit.new(17),
        Purl.new(1),
        Knit.new(3),
        Purl.new(1),
        Knit.new(17)
      ),
      StockingStitchBlock.new(rows: 3, starting_stitch: :purl, stitches: 39),
      Row.new(
        Knit.new(2),
        6.times.map { [ Knit.new(4), Reduce.new(1) ] },
        Knit.new(1)
      ),
      StockingStitchBlock.new(rows: 3, starting_stitch: :purl, stitches: 33),
    ].flatten
  end
end
