require 'spec'
require 'spec/autorun'

describe String, "methods" do

  it "'capitalize' capitalizes the first character of the string" do
    "abcdefg".capitalize.should eql("Abcdefg");
  end

  it "'capitalize' capitalizes only the first character of the first word of the string" do
    "eddie would go".capitalize.should eql("Eddie would go");
  end

  it "'upcase' capitalizes all the characters of the string" do
    "eddie would go".upcase.should eql("EDDIE WOULD GO");
  end

  it "'squeeze' replaces all concurrent dupe characters with a single instance of that character" do
    "eddie would go".squeeze.should eql("edie would go")
    "foo  too".squeeze.should eql("fo to")
  end

  it "'strip' removes leading and trailing whitespace from the string" do
    "  foo too  ".strip.should eql("foo too")
  end

end

