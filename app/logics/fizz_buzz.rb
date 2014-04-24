FizzBuzz = Struct.new(:arr) do
  def transmute!
    arr.map { |number| (a = "#{['Fizz'][number%3]}#{['Buzz'][number%5]}").blank? ? number.to_s : a }
  end
end