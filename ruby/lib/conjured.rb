
require_relative 'item'

class Conjured < Item
  def update_quality
    @sell_in -= 1
    return if @quality == 0

    @quality -= 2
    @quality -= 2 if @sell_in <= 0

  end
end
