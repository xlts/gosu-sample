require_relative 'game_object'
require_relative 'player_input_handler'
require_relative 'projectile'

class Player < GameObject

  def initialize
    super
    @sprite = Gosu::Image.new("media/img/player.png", :tileable => true)
    @projectiles = []
  end

  def draw
    @sprite.draw_rot(@x, @y, 1, 0)
    @projectiles.each { |p| p.draw }
  end

  def update
    player_input_handler.handle_input
    @projectiles.each { |p| p.update }
  end

  def set_initial_position(width, height)
    @x = width / 2
    @y = height - height / 10
  end

  def fire_projectile
    projectile = Projectile.new(@x, @y)
    @projectiles << projectile
  end

  private

    def player_input_handler
      @player_input_handler ||= PlayerInputHandler.new(self)
    end
end