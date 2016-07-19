class Robot
  def initialize(name)
    @name = name
    @released = false

  end
  def release!
    @released = true
  end

  def buy!(person)
    if @released == true
      puts "El robot #{@name} fue comprado por #{person.name}"
    else
      puts "Hubo un error al intentar comprar el robot #{@name}"

    end

  end

  def show_distance(km)
    puts "Distancia que puede recorrer: #{distance(km)}"

  end
end
