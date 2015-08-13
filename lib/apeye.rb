require 'rubygems'
require 'gosu'
require 'singleton'
require 'stringio'

module ZOrder
  Background, UI = *0..3
end

class Message
  include Singleton

  attr_accessor :text

  def set_text(text = nil)
    @text = text || $stdout.string.split("\n").last
  end

end

class ApEye < Gosu::Window

  def self.start
    @thread = Thread.new do
      window = ApEye.new
      window.show
    end

  end

  def initialize
    super 480, 30, false
    self.caption = 'AP Eye - Log Monitor'
    @font = Gosu::Font.new(16)

    @message = Message.instance

    foo = StringIO.new
    $stdout = foo
  end

  def update
    @message.set_text
  end

  def draw
    @font.draw("> #{@message.text}", 10, 10, ZOrder::UI, 1.0, 1.0, 0xff_ffff00)
  end
end
