class Shortens < ActiveRecord::Base
  self.table_name = "urls"
  before_create do
    self.local_parameter = SecureRandom.alphanumeric(10) unless self.id
  end
end
