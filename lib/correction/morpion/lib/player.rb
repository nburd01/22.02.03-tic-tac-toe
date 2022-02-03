class Player
  attr_accessor :name, :glyph
  attr_accessor :letter, :number

  def initialize(name, glyph)
    @name = name
    @glyph = glyph
    @letter = ""
    @number = -1
  end
end