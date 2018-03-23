# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  return false if number.nil? || number < 0

  digits = []

  until number == 0

    digits << (number % 10)

    number /= 10

  end

  front = 0
  back = digits.length - 1

  until front >= back

    return false if digits[front] != digits[back]

    front += 1
    back -= 1
  end

  return true

end
