require_relative 'robot'
require_relative '../sources/battery'
class Flyer < Robot
  include Battery

  def initialize(name)
    super
    @colourArray = ["Red", "Blue", "Yellow"]
    @paint = @colourArray.shuffle.sample
  end

  def self.show_abilities
    puts "Volador: Volar"
  end
end
