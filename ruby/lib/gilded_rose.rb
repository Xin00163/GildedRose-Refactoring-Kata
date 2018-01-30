class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def update_quality
  end
end

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

class Aged_brie < Item
  def update_quality
    return if @quality >= 50
    @quality += 1
    @sell_in -= 1
  end
end

class Sulfuras < Item
  def update_quality
    @quality
  end
end

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

class Conjured < Item
  def update_quality
    return if @quality == 0

    @quality -= 2
    @quality -= 2 if @sell_in <= 0

    @sell_in -= 1
  end
end

  # class = {"Normal" : Normal,
  #         "Aged_brie" : Aged_brie,
  #         "Sulfuras" : Sulfuras
  #         "Backstage" : Backstage
  #         "Conjured" : Conjured}
