require File.join(File.dirname(__FILE__), '../lib/gilded_rose')

describe GildedRose do

  describe "#normal_update_quality" do
    it "normal rose's sell in date decrease by 1" do
      item = Normal.new("normal", 10, 10)
      item.update_quality()
      expect(item.quality).to eq(9)
      expect(item.sell_in).to eq(9)
    end

    it "normal rose's quality degrades twice as fast once sell by date passed" do
      item = Normal.new("normal", 0, 10)
      item.update_quality()
      expect(item.quality).to eq(8)
    end

    it "normal rose's quality degrades only once before the sell by date passed" do
      item = Normal.new("normal", 1, 10)
      item.update_quality()
      expect(item.quality).to eq(9)
    end
  end

  describe "#aged_brie_update_quality" do
    it "aged brie's quality increase as it gets older" do
      item = GildedRose.new("Aged Brie", 10, 10)
      item.aged_brie_update_quality()
      expect(item.quality).to eq(11)
      expect(item.sell_in).to eq(9)
    end
  end

  describe "#sulfuras_update_quality" do
    it "sulfura's quality does not change as it gets older" do
      item = GildedRose.new("Sulfuras", 10, 10)
      item.sulfuras_update_quality()
      expect(item.quality).to eq(10)
      expect(item.sell_in).to eq(9)
    end
  end

  describe "#backstage_update_quality" do
    it "backstage's quality increase as it gets older" do
      item = GildedRose.new("Backstage passes", 14, 10)
      item.backstage_update_quality()
      expect(item.quality).to eq(11)
      expect(item.sell_in).to eq(13)
    end

    it "backstage's quality increase by 2 when there are 10 days or less" do
      item = GildedRose.new("Backstage passes", 10, 10)
      item.backstage_update_quality()
      expect(item.quality).to eq(12)
    end

    it "backstage's quality increase by 3 when there are 5 days or less" do
      item = GildedRose.new("Backstage passes", 5, 10)
      item.backstage_update_quality()
      expect(item.quality).to eq(13)
    end
  end

  describe "#conjured_update_quality" do
    it "conjured's quality degrades twice as fast as normal items" do
      item = GildedRose.new("Conjured", 5, 10)
      item.conjured_update_quality()
      expect(item.quality).to eq(8)
    end
  end


end
