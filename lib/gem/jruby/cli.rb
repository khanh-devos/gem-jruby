require 'thor'
require_relative './food'


module Gem
  module Jruby
    
    class CLI < Thor
      desc "portray ITEM", "Determines if a piece of food is gross or delicious"
      def portray(name)
        puts Gem::Jruby::Food.portray(name)
        # can try to execute the CLI by: bundle exec exe/food portray broccoli
      end

      desc "pluralize", "Pluralizes a word"
      method_option :word, aliases: "-w"
      def pluralize
        puts Gem::Jruby::Food.pluralize(options[:word])

        # to understand the method_option: try below
        # bundle exec exe/food pluralize --word
        # bundle exec exe/food pluralize -w
      end

    end

  end
end