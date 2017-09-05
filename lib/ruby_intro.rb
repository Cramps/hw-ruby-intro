# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # arr.sum (jk but if we switched to 2.4.0 I'd totally do it)
  sum = 0
  arr.each do |i|
    sum += i
  end
  sum
end

def max_2_sum arr
  sum arr.max 2
end

def sum_to_n? arr, n
  sum_to_n = false
  if arr.size > 1
    arr.each_with_index do |x,i|
      arr.each_with_index do |y,j|
        sum_to_n = true if x + y == n && i != j
      end
    end
  end
  sum_to_n
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !s.match(/\A[qwrtypsdfghjklzxcvbnm].*/i).nil?
end

def binary_multiple_of_4? s
  s == '0' ? true : s.match(/\A[01]*100\z/)
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize isbn, price
    raise ArgumentError unless isbn.is_a?(String) && isbn.size > 0 && price.is_a?(Numeric) && price > 0
    @isbn = isbn
    @price = price.round 2
  end
  
  def price_as_string
    # Got the sprintf idea from:
    # https://stackoverflow.com/questions/15900537/to-d-to-always-return-2-decimals-places-in-ruby
    # https://ruby-doc.org/core-2.3.0/Kernel.html#method-i-sprintf
    "$#{sprintf '%#.2f', @price}"
  end
end
