class Projectile < GameObject
  
  def initialize(width, height)
    @x = width
    @y = height
    @sprite = Gosu::Image.new("media/img/projectile.png", :tileable => true)
  end

  def update
    move('up')
  end

  def draw
    @sprite.draw_rot(@x, @y, 1, 0)
  end
end