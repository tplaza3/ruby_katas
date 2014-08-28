require "spec_helper"

describe GiftExchange do
  it "will make a gift exhange list from an array of name and return a hash" do
    expect(GiftExchange.assign_gift_givers1).to eql( {"Sumeet Jain"=>"Beth Haubert", "Sachin Jain"=>"Suneel Jain", "Prisha Gupta"=>"Richa Goyal", "Arjun Goyal"=>"Judy Haubert"}
)
  end
end