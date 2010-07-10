
describe String, "methods" do
  it "capitalize should capitalize the first character of the string" do
    "abcdefg".capitalize.should eql("Abcdefg");
  end

  it "capitalize should capitalize only the first character of the first word of the string" do
    "eddie would go".capitalize.should eql("Eddie would go");
  end

  it "upcase should capitalize all the characters of string" do
    "eddie would go".upcase.should eql("EDDIE WOULD GO");
  end
end

