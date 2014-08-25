class Usuario < ActiveRecord::Base
  include Searcheable
  
  belongs_to :agencia
  
  

  def self.excluded_methods
    %w(nombre apellido)
  end
  
end
