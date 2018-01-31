require 'gilded_rose'
require 'normal'
require 'item'

describe Normal do
  subject{ described_class.new("Normal", 10, 10) }
  it "normal rose's sell in date decrease by 1" do
    expect(subject.name).to eq "Normal"
  end

  it "normal rose's quality degrades twice as fast once sell by date passed" do
    normal = Normal.new("Normal", 0, 10)
    normal.update_quality
    expect(normal.quality).to eq(8)
  end

  it "normal rose's quality degrades only once before the sell by date passed" do
    normal = Normal.new("Normal", 5, 10)
    normal.update_quality
    expect(normal.quality).to eq(9)
  end
end
