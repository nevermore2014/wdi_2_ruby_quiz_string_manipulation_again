# .______       _______ .___  ___.      ___       __  .__   __.      ______     ___       __      .___  ___.
# |   _  \     |   ____||   \/   |     /   \     |  | |  \ |  |     /      |   /   \     |  |     |   \/   |
# |  |_)  |    |  |__   |  \  /  |    /  ^  \    |  | |   \|  |    |  ,----'  /  ^  \    |  |     |  \  /  |
# |      /     |   __|  |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |      /  /_\  \   |  |     |  |\/|  |
# |  |\  \----.|  |____ |  |  |  |  /  _____  \  |  | |  |\   |    |  `----./  _____  \  |  `----.|  |  |  |  __
# | _| `._____||_______||__|  |__| /__/     \__\ |__| |__| \__|     \______/__/     \__\ |_______||__|  |__| (__)
require 'spec_helper'
require_relative '../quiz'

# The first question's tests are written.
# run rspec quiz_spec.rb
describe "#sleep_in?" do
  it "returns true if the current day is Saturday or Sunday" do
    # assuming you're answering this on a weekday!
    expect(sleep_in?).to be(false)
  end

  it "takes an options hash as a parameter" do
    parameters = method(:sleep_in?).parameters.first
    expect(parameters).to include(:options)
  end

  it "returns true if vacation is true" do
    question_1 = sleep_in?(vacation: true)
    expect(question_1).to be(true)
  end
end

# Write the next tests yourself!
# See quiz.rb for more details

# Question 2: a method called del_del
  # Example Usage:
  # del_del("abdelcd") => "abcd"
  # del_del("xyz") => "xyz"
describe "#del_del" do
  it "returns the word withtout del" do
    expect(del_del("abdelcd")).to eq 'abcd'
    expect(del_del("xyz")).to eq 'xyz'
  end
end
# Question 3: a method called missing_char
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-14/docs/built-in-matchers/raise-error-matcher
describe "#missing_char" do
  it "returns the certain digits" do
    expect(missing_char("kitten", 1)).to eq 'kitten'
  end

  it "returns the current ditits" do
    expect(missing_char(347, 1)).to raise RuntimeError
  end
end


# Question 4: a method called near_hundred
  # Example Usage:
  # near_hundred(93) => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!
describe "#near_hundred" do
  it "returns the int if it is between 90 and 99" do
    expect(near_hundred(93)).to be true
    expect(near_hundred(52)).to be false
    expect(near_hundred('two')).to raise RuntimeError
  end
end


# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"

describe "#back_around" do
  it "returns a new string" do
    expect(back_around('cat')).to eq 'tca'
    expect(back_around('hello')).to eq 'ohell'
  end
end
