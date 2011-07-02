require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

# example class
class Crap
  include Deeper
  def prints_shit
    puts "shit"
  end
end

describe "Deeper" do
  it "shows #arrayed_class returning an array" do
    a = Crap.new
    a.arrayed_class.class == Array
  end
  
  it "shows #method_parameters returning an array" do
    a = Crap.new
    a.method_parameters("prints_shit").class == Array
  end
  
end
