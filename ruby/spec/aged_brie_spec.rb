require 'gilded_rose'
require 'aged_brie'

describe AgedBrie do
  subject{ described_class.new("AgedBrie", 10, 10) }

  it "aged brie's quality increase as it gets older" do
    subject.update_quality
    expect(subject.quality).to eq(11)
    expect(subject.sell_in).to eq(9)
  end
end
