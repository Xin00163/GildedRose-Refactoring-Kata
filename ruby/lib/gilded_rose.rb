require_relative 'item'
require_relative 'aged_brie'
require_relative 'backstage'
require_relative 'conjured'
require_relative 'normal'

class GildedRose
  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each { |item| item.update_quality }
  end


end
