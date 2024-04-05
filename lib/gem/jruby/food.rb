require 'active_support/inflector'

module Gem
  module Jruby
    class Food
      def self.portray(food)
        return "Gross!" if food.downcase == "broccoli"
        "Delicious!"
      end

      def self.pluralize(word)
        word.pluralize
      end

    end


  end
end