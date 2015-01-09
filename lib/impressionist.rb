require 'impressionist/load'

module Impressionist
  # Define default ORM
  mattr_accessor :orm
  @@orm = :active_record

  # If counters should be updated in a after_save callback
  mattr_accessor :enable_save_callback
  @@enable_save_callback = true

  # Load configuration from initializer
  def self.setup
    yield self
  end
end
