class ApplicationRecord < ActiveRecord::Base
  if Gem::Version.new(Rails.version) >= Gem::Version.new('7.0')
    primary_abstract_class
  else
    self.abstract_class = true
  end
end
