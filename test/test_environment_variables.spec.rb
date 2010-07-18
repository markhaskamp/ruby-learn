require 'spec'
require 'spec/autorun'

describe "Environment Variables" do

  it "$LOAD_PATH is an array of directory paths" do
    $LOAD_PATH.instance_of?(Array).should be_true
  end

  it "default $LOAD_PATH includes '.'" do
    $LOAD_PATH.include?('.').should be_true
  end

  it "ENV is an object that behaves like a hash of environmant variables" do
    ENV.class.should eql(Object)
    ENV['PATH'].should_not eql nil
  end
end
