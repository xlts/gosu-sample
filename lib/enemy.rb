require_relative 'game_object'

class Enemy < GameObject

  def initialize
    super
    @sprite = Gosu::Image.new("media/img/enemy.png", :tileable => true)
    @x = rand(800)
  end

  def update
    move('down')
  end

  def draw
    @sprite.draw_rot(@x, @y, 1, 0)
  end
end