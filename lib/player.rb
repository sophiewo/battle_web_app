class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def deduct_hp
    @hp -= 10
  end

  def attack(player)
    player.deduct_hp
  end

end
