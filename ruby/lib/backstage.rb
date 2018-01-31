require_relative 'item'

class Backstage < Item
  def update_quality
    return if @quality >= 50
    return @quality == 0 if @sell_in < 0

    @quality += 1
    @quality += 1 if @sell_in <= 10
    @quality += 1 if @sell_in <= 5

    @sell_in -= 1
  end
end
