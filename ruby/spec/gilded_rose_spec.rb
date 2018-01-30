require File.join(File.dirname(__FILE__), '../lib/gilded_rose')

describe GildedRose do

  describe "#normal_update_quality" do
    it "normal rose's sell in date decrease by 1" do
      item = GildedRose.new("normal", 10, 10)
      item.normal_update_quality()
      expect(item.quality).to eq(9)
      expect(item.sell_in).to eq(9)
    end

    it "normal rose's quality degrades twice as fast once sell by date passed" do
      item = GildedRose.new("normal", 0, 10)
      item.normal_update_quality()
      expect(item.quality).to eq(8)
    end
    
  end

end
