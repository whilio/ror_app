FizzBuzz = Struct.new(:arr, :divs) do
  def transmute!
    arr.map { |number| (a = "#{['Fizz'][number%3]}#{['Buzz'][number%5]}").blank? ? number.to_s : a }
  end

  def nightmare!
    divs.delete_if { |i| i < 2 }
    divs.delete_if { |i| divs.select{ |ii| ii%i==0 && ii > i}.size > 0 }
    divs.delete_if { |i| divs.select{ |ii| i.gcd(ii) > 1 && ii > i }.size > 0 }
    arr.map do |number|
      divisors = divs.select { |i| number%i==0 }
      tail = number; divisors.each { |i| tail = tail / i }
      "#{ divisors.join('x') }#{ tail==1 || tail==number ? '' : 'x' }#{ tail==1 && number!=1 ? '' : tail }"
    end
  end
end