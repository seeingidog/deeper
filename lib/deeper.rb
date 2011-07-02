module Deeper
  
  # return array including class name and namespace
  def arrayed_class
    self.class.to_s.split("::")
  end
  
  # return array of method parameters
  def method_parameters(method_name)
    self.method(method_name.to_sym).parameters
  end


end