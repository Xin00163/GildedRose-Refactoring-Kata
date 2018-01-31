require_relative 'item'

class Backstage < Item
  def update_quality
    @sell_in -= 1
    if @quality <= 50 && @quality >= 0
      @quality += 1
      @quality += 1 if @sell_in <= 10
      @quality += 1 if @sell_in <= 5
    end

  end
end
