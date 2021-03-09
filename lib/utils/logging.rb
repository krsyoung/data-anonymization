require 'active_record'
require 'logger'

module DataAnon
  module Utils
    module Logging

      def logger
        @@data_logger ||= (self.logger = Logger.new(STDOUT) )
      end

      def logger= logger
        @@data_logger = logger
        ActiveRecord::Base.logger = logger
        @@data_logger
      end

    end
  end
end