class GameObject
  attr_reader :x, :y

  MOVEMENT_VALUE = 5

  def initialize
    @x = 0
    @y = 0
  end

  def move(direction)
    case direction
    when 'up'
      @y = @y - MOVEMENT_VALUE
    when 'down'
      @y = @y + MOVEMENT_VALUE
    when 'left'
      @x = @x - MOVEMENT_VALUE
    when 'right'
      @x = @x + MOVEMENT_VALUE
    else
      puts 'something went wrong'
    end
    restrict_position
  end

  def update
    raise 'implement me'
  end

  def draw
    raise 'implement me'
  end

  private

    def restrict_position
      
    end
end