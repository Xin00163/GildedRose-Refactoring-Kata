require 'gilded_rose'
require 'backstage'


  describe Backstage do
    subject{ described_class.new("Backstage", 14, 10) }

    it "backstage's quality increase as it gets older" do
      subject.update_quality
      expect(subject.quality).to eq(11)
      expect(subject.sell_in).to eq(13)
    end

    it "backstage's quality increase by 2 when there are 10 days or less" do
      backstage = Backstage.new("Backstage", 10, 10)
      backstage.update_quality
      expect(backstage.quality).to eq(12)
    end

    it "backstage's quality increase by 3 when there are 5 days or less" do
      backstage = Backstage.new("Backstage", 5, 10) 
      backstage.update_quality
      expect(backstage.quality).to eq(13)
    end
  end
