require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  
  def self.column_names
    DB[:conn].results_as_hash = true 
    sql = "pragma"
  end

end
