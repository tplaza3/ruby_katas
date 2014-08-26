require "spec_helper"

describe StringCalculator do
  it "add two numbers together" do
    expect(StringCalculator.add("1, 2")).to eql(3)
  end
end
  
describe StringCalculator do
  it "add any amount of numbers as strings together" do
    expect(StringCalculator.add("24, 55, 2")).to eql(81)
  end
end

describe StringCalculator do
  it "add any amount of numbers as strings together" do
    expect(StringCalculator.add("24, 55, -2, 2, 4")).to eql(83)
  end
end

describe StringCalculator do
  it "allow for new lines with string input" do
    expect(StringCalculator.add("1\n2\n3")).to eql(6)
  end
end


describe StringCalculator do
  it "raises an exception when string number input is negative and returns the numbers that are negative" do
    expect { StringCalculator.valid("24, 55, -2, 2, -4") }.to raise_error
  end
end

describe StringCalculator do
  it "raises an exception when string number input is negative" do
    expect {  StringCalculator.valid2("24, 55, -44, 0, -1") }.to raise_error ("Negatives not allowed. -44 is/are not allowed")
  end
end

describe StringCalculator do
  it "not sum up any string number input greater than 1000" do
    expect(StringCalculator.add2("24, 55, -2, 2, 4, 1001")).to eql(83)
  end
end