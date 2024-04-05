require_relative "../lib/gem/jruby/food"

describe Gem::Jruby::Food do
  it "broccoli is gross" do
    expect(Gem::Jruby::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(Gem::Jruby::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
    expect(Gem::Jruby::Food.pluralize("Tomato")).to eql("Tomatoes")
  end
end
