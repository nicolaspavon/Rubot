
class Robot
@@botsbuilt = 0
@@botsreleased = 0
@@botsbought = 0
  def initialize(name)
    @name = name
    @released = false
    @@botsbuilt += 1
    @number = Random.rand(100000...1000000)
    @state = "Built"



  end
  def release!
    @released = true
    @@botsreleased += 1
    @@botsbought += 1
    @state = "Released"
  end

  def buy!(person)
    if @released == true
      puts "El robot #{@name} fue comprado por #{person.name} #{person.secondname}"
      @state = "Bought"
      @personName = person.name
      @personSecondname = person.secondname
    else
      puts "Hubo un error al intentar comprar el robot #{@name}"

    end


  end

  def show_distance(km)
    puts "Distancia que puede recorrer: #{distance(km)}"

  end
  def show_info
    puts "Number: #{@number}"
    puts "Name: #{@name}"
    puts "State: #{@state}"
    puts "Colour: #{@paint}" if @name.include? "Flyer"
    puts "Bought by: #{@personName} #{@personSecondname}" if @state == "Bought"

  end
  def self.show_report
    puts "Robots construidos al momento:#{@@botsbuilt}"
    puts "Robots lanzados al momento:#{@@botsreleased}"
    puts "Robots vendidos al momento:#{@@botsbought}"
  end

end
