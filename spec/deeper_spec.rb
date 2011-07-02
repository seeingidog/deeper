require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

# example class
class Crap
  include Deeper
  def prints_shit
    puts "shit"
  end
  def prints_something(something)
    puts something
  end
end

describe "Deeper" do
  before(:each) do
    @obj = Crap.new
  end
  
  it "shows #arrayed_class returning an array" do
    @obj.arrayed_class.class == Array
  end
  
  it "shows #method_parameters returning an array" do
    @obj.method_parameters("prints_shit").class == Array
  end
  
  it "should be an empty Array for a method with no parameters" do
    @obj.method_parameters("prints_shit").should == []
  end
  
  it "should be a Array containing the parameters for #prints_something" do
    @obj.method_parameters("prints_something").should == [[:req, :something]] 
  end
  
end
