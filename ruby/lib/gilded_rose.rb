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
    if @quality != 0
      if @sell_in > 0
        @quality -= 1
      end
      if @sell_in <= 0
        @quality -= 2
      end
    end

      @sell_in -= 1

  end


  def update_quality
    case name
      when 'normal'
        return normal_update_quality


      # # Normal
      #   if item.quality < 50
      #     item.quality = item.quality + 1
      # # Backstage
      #     if item.name == "Backstage passes to a TAFKAL80ETC concert"
      #       #increase by 2 when there are 10 days or less
      #       if item.sell_in < 11
      #         if item.quality < 50
      #           item.quality = item.quality + 1
      #         end
      #       end
      #       #increase by 3 when there are 5 days or less
      #       if item.sell_in < 6
      #         if item.quality < 50
      #           item.quality = item.quality + 1
      #         end
      #       end
      #     end
      #   end
      # end
      # #Sulfuras
      # if item.name != "Sulfuras, Hand of Ragnaros"
      #   item.sell_in = item.sell_in - 1
      # end
      # #sell by date has passed
      # if item.sell_in < 0
      #   if item.name != "Aged Brie"
      #     if item.name != "Backstage passes to a TAFKAL80ETC concert"
      #       if item.quality > 0
      #         if item.name != "Sulfuras, Hand of Ragnaros"
      #           item.quality = item.quality - 1
      #         end
      #       end
      #     else
      #       item.quality = item.quality - item.quality
      #     end
      #   else
      #     if item.quality < 50
      #       item.quality = item.quality + 1
      #     end
      #   end
    end
  end
end
