# frozen_string_literal: true

class Player
  attr_accessor :name, :health, :gems

  def initialize(name)
    @name = name
    @health = 100
    @gems = 0
  end

  def collect_gem
    @gems += 1
    puts "#{@name} collected a gem!  You have #{@gems} gems."
  end

  def take_damage(amount)
    @health -= amount
    puts "#{@name} took #{amount} damage.  Health: #{@health}"
    if @health <= 0
      puts "Game Over! #{@name} has fallen."
      exit
    end
  end
end
