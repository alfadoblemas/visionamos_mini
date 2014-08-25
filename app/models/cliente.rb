class Cliente < ActiveRecord::Base
  include Searcheable

  belongs_to :agencia

  def self.excluded_methods
    %w(primer_nombre primer_apellido)
  end  
end
