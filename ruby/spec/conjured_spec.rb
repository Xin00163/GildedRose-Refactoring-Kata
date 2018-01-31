require 'gilded_rose'
require 'conjured'
require 'item'

describe Conjured do
    subject{ described_class.new("Conjured", 10, 10) }
  it "conjured's quality degrades twice as fast as normal items" do
    subject.update_quality
    expect(subject.quality).to eq(8)
  end
end
