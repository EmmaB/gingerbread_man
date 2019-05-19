class Stitch
  def initialize(arg)
    self.number = arg
  end

  attr_accessor :number
end


class Knit < Stitch
  def to_pattern
    "k#{number}"
  end

  def to_ascii
    "**" * number
  end
end


class Purl < Stitch
  def to_pattern
    "p#{number}"
  end

  def to_ascii
    "^^" * number
  end
end

class Enlarge < Stitch
  def to_pattern
    "kfb#{number}"
  end

  def to_ascii
    "***" * number
  end
end

class Reduce < Stitch
  def to_pattern
    "k2tog#{number}"
  end

  def to_ascii
    "*" * number
  end
end
