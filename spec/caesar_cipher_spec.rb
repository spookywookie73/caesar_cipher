require './caesar_cipher'

describe "#caesar_cipher" do
  it "returns an encrypted string with a positive number" do
    expect(caesar_cipher('What a string!', 5)).to eql("Bmfy f xywnsl!")
  end
end

describe "#caesar_cipher" do
  it "returns an encrypted string with a negative number" do
    expect(caesar_cipher('What a string!', -1)).to eql("Vgzs z rsqhmf!")
  end
end