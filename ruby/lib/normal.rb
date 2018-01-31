require_relative 'item'


class Normal < Item
  def update_quality
    return if @quality == 0
    if @sell_in > 0
      @quality -= 1
    else
      @quality -= 2
    end

    @sell_in -= 1
  end
end
