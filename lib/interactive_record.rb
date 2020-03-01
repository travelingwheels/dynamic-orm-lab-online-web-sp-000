require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def self.table_name
    self.to_s.downcase.pluralize
  end
  
  #self.column_names.each do |col_name|
   # attr_accessor col_name.to_sym
  #end
  
  def initialize(pqtions = {})
    options.each do |property, value|
      self.send("#{property}=", value)
    end
  end
end