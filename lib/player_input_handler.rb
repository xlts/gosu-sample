class PlayerInputHandler

  def initialize(game_object)
    @game_object = game_object
  end

  def handle_input
    if Gosu::button_down? Gosu::KbLeft
      @game_object.move('left')
    end
    if Gosu::button_down? Gosu::KbRight
      @game_object.move('right')
    end
    if Gosu::button_down? Gosu::KbUp
      @game_object.move('up')
    end
    if Gosu::button_down? Gosu::KbDown
      @game_object.move('down')
    end
    if Gosu::button_down? Gosu::KbSpace
      @game_object.fire_projectile
    end
  end
end