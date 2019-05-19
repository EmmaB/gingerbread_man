require "./head.rb"
require "./stitch.rb"
require "./row.rb"
require "./block.rb"
require "./knit_bot.rb"

class GingerbreadMan
  def initialize(size: :normal, color: :brown)
    self.size = size
  end

  def to_pattern
    puts "Gingerbread Man pattern"
    Head.new.to_pattern
    Shoulders.new.to_pattern
    Legs.new.to_pattern
    Arms.new.to_pattern
  end

  def to_ascii
    GingerbreadMan.put_in_center "Gingerbread Man pattern"
    Head.new.to_ascii
    Shoulders.new.to_ascii
    Legs.new.to_ascii
    Arms.new.to_ascii
  end

  private

  attr_accessor :size, :color

  def self.put_in_center(str)
    puts str.center(150)
  end
end
