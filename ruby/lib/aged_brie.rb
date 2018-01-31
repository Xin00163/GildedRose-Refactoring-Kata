require_relative 'item'

class AgedBrie < Item
  def update_quality
    @sell_in -= 1
    return if @quality >= 50
    @quality += 1

  end
end
