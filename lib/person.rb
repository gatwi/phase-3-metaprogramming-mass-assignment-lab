class Person
  attr_accessor :name, :weight, :wrist_size
 # calling the attr_accessor method through getter and setter
 
  def initialize(attributes = nil)
    if attributes
      attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end
end
