require 'gosu'
require_relative 'player'
require_relative 'enemy'

class MainWindow < Gosu::Window
  attr_reader :width, :height

  def initialize
    @width = 800
    @height = 600
    super(width, height)
    initialize_window
  end

  def update
    @player.update
    @enemy.update
  end

  def draw
  	@background_image.draw(0, 0, 0)
    @player.draw
    @enemy.draw
  end

  private

    def initialize_window
      set_caption
      set_background
      initialize_game_objects
    end

    def initialize_game_objects
      @player = Player.new
      @player.set_initial_position(@width, @height)
      @enemy = Enemy.new
    end

    def set_caption
      self.caption = "Gosu Test"  
    end

    def set_background
      @background_image = Gosu::Image.new("media/img/background.jpg", :tileable => true)
    end
end

window = MainWindow.new
window.show