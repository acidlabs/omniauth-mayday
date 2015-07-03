require 'singleton'
require 'yaml'

module OmniAuth
  module Mayday
    # Public: Manage configurations variables
    class Config
      include Singleton

      attr_accessor :settings
      
      # Public: Loads the configuration file omniauth-mayday.yml
      # If it's a rails application it will take the file from the config/ directory
      #
      # env - Environment.
      #
      # Returns a Config object.
      def initialize env = nil
        if env
          # For non-rails apps
          @config_filepath = File.join(File.dirname(__FILE__), "..", "..", "config", "omniauth-mayday.yml")
          load(env)
        else
          @config_filepath = File.join(Rails.root, "config", "omniauth-mayday.yml")
          load(Rails.env)
        end
      end
      
      private 

      # Public: Initialize variables based on omniauth-mayday.yml
      #
      # rails_env - Environment.
      #
      # Returns nothing.
      def load(rails_env)
        @settings = YAML.load(ERB.new(File.read(@config_filepath)).result)[rails_env].symbolize_keys
      end
      
    end
  end
end