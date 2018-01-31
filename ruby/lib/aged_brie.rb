require_relative 'item'

class AgedBrie < Item
  def update_quality
    return if @quality >= 50
    @quality += 1
    @sell_in -= 1
  end
end
