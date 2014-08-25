module Searcheable
  extend ActiveSupport::Concern

  module ClassMethods
    def search pattern
      where(full_statement(pattern))
    end

    def full_statement(pattern)
      statements(pattern).join(' or ')
    end    
    def statements(pattern)
      searcheable_methods.map do |method|
        "#{method} like '%#{pattern}%' "
      end
    end
    
    def searcheable_methods
      column_names - exclude_methods
    end
    
    def exclude_methods
      %w{}
    end
  end
end