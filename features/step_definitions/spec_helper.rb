# Define your helpers...
module PocNewAccount
  module Helpers

    def single_steps
      PocNewAccount::SingleSteps.new
    end
  end
end

module CPF
  def self.generate
    digits = []
    9.times { digits << rand(9) }
    2.times { digits << self.verification_digit_for(digits) }
    digits.join
  end
  private
    def self.verification_digit_for(known_digits)
      i = 1
      sums = known_digits.reverse.collect do |digit|
        i = i + 1
        digit * i
    end
    verification_digit = 11 - sums.inject(0) { |sum, item| sum + item } % 11
    verification_digit < 10 ? verification_digit : 0
  end
end

module CNPJ
  def self.generate
    digits = []
    8.times { digits << rand(9) }
    digits += [0, 0, 0, 1]
    2.times { digits << self.verification_digit_for(digits) }
    digits.join
  end
  def valid?
    return false unless number.size == 14
    original = number.split('').map(&:to_i)
    new = original[0..11]
    2.times { new << self.class.verification_digit_for(new) }
    original == new
  end
  def to_s
    human_number
  end
  def human_number
    number =~ /(\d{2})\.?(\d{3})\.?(\d{3})\/?(\d{4})-?(\d{2})/
    "#{$1}.#{$2}.#{$3}/#{$4}-#{$5}"
  end
  private
    def self.verification_digit_for(known_digits)
      i = 1
      sums = known_digits.reverse.collect do |d|
        i = increment_value(i)
        d * i
    end
    vd = 11 - sums.inject(0){|sum,item| sum + item} % 11
    vd < 10 ? vd : 0
  end
  def self.increment_value(i)
    i < 9 ? i + 1 : 2
  end
end
