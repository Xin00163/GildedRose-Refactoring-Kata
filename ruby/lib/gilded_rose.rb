class GildedRose
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def normal_update_quality
    return if @quality == 0
    if @sell_in > 0
      @quality -= 1
    else
      @quality -= 2
    end

    @sell_in -= 1
  end

  def aged_brie_update_quality
    return if @quality >= 50
    @quality += 1
    @sell_in -= 1
  end

  def sulfuras_update_quality
    @quality
    @sell_in -= 1
  end

  def backstage_update_quality
    @sell_in -= 1
    return if @quality >= 50
    return @quality == 0 if @sell_in < 0

    @quality += 1
    @quality += 1 if @sell_in <= 10
    @quality += 1 if @sell_in <= 5
  end

  def conjured_update_quality
    return if @quality == 0
    @quality -= 2
    @sell_in -= 1
  end

  def update_quality
    case name
      when 'normal'
        return normal_update_quality
      when 'Aged Brie'
        return aged_brie_update_quality
      when 'Sulfuras'
        return sulfuras_update_quality
      when 'Backstage passes'
        return backstage_update_quality
      when "Conjured"
        return conjured_update_quality
    end
  end
end
