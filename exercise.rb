class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # Implement this method
    
    # Doing a weird trick to keep punctuation intact
    str = str.gsub(" ",",")

    @strings = str.split(",")
    res = []

    @strings.each do |string|
      string = string.strip
      if string.length <= 4
        res.append string
      else
        if string[0] === string[0].capitalize
          if string[-1].match?(/[?!.]/)
            res.append "Marklar" + string[-1]
          else
            res.append "Marklar"
          end
        else
          if string[-1].match?(/[?!.]/)
            res.append "marklar" + string[-1]
          else
            res.append "marklar"
          end
        end    
      end      
    end
    return res.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.fib(n)
    if n <= 2
      return 1
    else 
      return (self.fib(n-1) + self.fib(n-2))
    end
  end

  def self.even_fibonacci(nth)
    # Implement this method
    sum = 0
    for num in 1..nth
      result = self.fib(num)
      if result % 2 == 0
        sum += result
      end
    end
    return sum
  end
end
