class Row
  def initialize(*args)
    self.args = args.flatten
  end

  def to_pattern
    puts "Row #{row_count}: #{pattern}"
  end

  def to_ascii
    GingerbreadMan.put_in_center ascii.center(150)
  end

  attr_accessor :args

  def pattern
    args.flat_map do |arg|
      arg.to_pattern
    end.join("; ")
  end

  def ascii
    args.flat_map do |arg|
      arg.to_ascii
    end.join("")
  end

  def row_count
    ObjectSpace.each_object(Row).count
  end
end

class CastOnRow < Row
  def initialize(cast_on: nil)
    self.cast_on = cast_on
  end

  attr_accessor :cast_on

  def to_pattern
    puts "Cast on #{cast_on}"
  end

  def to_ascii
    GingerbreadMan.put_in_center "|" * cast_on
  end
end
