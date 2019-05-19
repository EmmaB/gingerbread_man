class StockingStitchBlock
  def initialize(rows: nil, starting_stitch: :purl, stitches: nil)
    self.starting_stitch = starting_stitch
    self.rows = rows
    self.stitches = stitches
  end

  def to_pattern
    puts "Stocking Stitch for #{rows} rows: start with #{starting_stitch.to_s}"
  end

  def to_ascii
    rows_in_ascii.each do |a|
      GingerbreadMan.put_in_center a.center(150)
    end
  end

  private

  def rows_in_ascii
    rows.times.each_with_index.flat_map do |row, idx|
      if idx.even?
        Row.new(even_stitch_obj.new(stitches)).ascii
      else
        Row.new(odd_stitch_obj.new(stitches)).ascii
      end
    end
  end

  def even_stitch_obj
    Kernel.const_get(starting_stitch.to_s.capitalize)
  end

  def odd_stitch_obj
    return Knit if starting_stitch == :purl
    Purl
  end

  attr_accessor :rows, :starting_stitch, :stitches
end
