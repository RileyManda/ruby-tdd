class Solver
  def factorial(number)
    if number.negative?
      raise ArgumentError, 'string is not defined for negative numbers'
    elsif number.zero?
      1
    else
      number * factorial(number - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero?

      'fizz'
    elsif (number % 5).zero?
      'buzz'
    end
  end
end
