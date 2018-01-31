
require_relative 'item'

class Conjured < Item
  def update_quality
    return if @quality == 0

    @quality -= 2
    @quality -= 2 if @sell_in <= 0

    @sell_in -= 1
  end
end
