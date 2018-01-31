require File.join(File.dirname(__FILE__), '../lib/gilded_rose')

describe GildedRose do
  describe "update_quality" do

    it "does not change the name" do
      items = [Normal.new("normal", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "normal"
    end

    it "cannot have negative quality" do
      items = [Normal.new("normal", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq(0)
      expect(items[0].sell_in).to eq(-1)
    end

    it "calls update_quality on each type of item" do
      items = [Normal.new("normal", 0, 0),
              AgedBrie.new("AgedBrie", 0, 0),
              Backstage.new("Backstage", 0, 0),
              Conjured.new("Conjured", 0, 0)]

      GildedRose.new(items).update_quality
      expect(items[0].to_s).to eq "normal, -1, 0"
      expect(items[1].to_s).to eq "AgedBrie, -1, 1"
      expect(items[2].to_s).to eq "Backstage, -1, 3"
      expect(items[3].to_s).to eq "Conjured, -1, 0"
    end
  end






end
