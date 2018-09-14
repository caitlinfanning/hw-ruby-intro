# When done, submit this entire file to the autograder.
# Caitlin Fanning and Mia Kim
# Part 1

def sum arr
  total_sum = 0
    if arr.empty?
        return 0
    else 
        return arr.sum
    end
end

def max_2_sum arr
  total_sum = 0
    if arr.empty?
        return 0
        else
        return arr.sort.last(2).sum
    end
end

def sum_to_n? arr, n
     return false if arr.empty? && n.zero?
    arr.combination(2).any? {|a, b| a + b == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil || /^[^AEIOU\W]/i.match(s) == nil
    return false
    else
    return true
end
end

def binary_multiple_of_4? s
  if s == "0"
      return true
  else
      /^[10]*00$/.match(s) != nil
  end
end

# Part 3

class BookInStock
     attr_accessor :isbn, :price
    def initialize(isbn, price)
        @isbn = isbn
        @price = price
        if isbn.empty? or price <= 0
        raise ArgumentError
        end
	end
 
	def price_as_string
        sprintf("$%2.2f", @price)
	end
end

