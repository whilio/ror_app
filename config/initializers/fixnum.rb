class Fixnum
  def fizzBuzz
    (a = "#{['Fizz'][self%3]}#{['Buzz'][self%5]}").blank? ? self.to_s : a
  end
end