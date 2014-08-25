module Decorator
  class Base
    attr_accessor :object

    #Metodos de instancia  
    def initialize(object)
      self.object =object
     
    end
   
    def method_missing(method_name, *args, &block)
      object.send(method_name, *args, &block)
    end
    #Metodos de clase
    def self.decorate(object)
      if object.class.name == 'ActiveRecord::Relation'
        decorate_collection(object)
      else
        decorate_single(object)
      end
    end
    
    def self.decorate_single object
      new(object)
    end

    def self.decorate_collection objects
      objects.map do |objecct|
        self.new object
      end
    end
    
  end
end