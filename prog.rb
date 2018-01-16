include(Math)
require('cmath')

srand Time.now.to_i
# $bin = Array.new(100)
rand_values = Array.new

(1..5000).step(2) do
  u1 = rand
  u2 = rand
  x1 = cos(2 * PI * u2) * CMath.sqrt(-2 * log(u1))
  x2 = sin(2 * PI * u2) * CMath.sqrt(-2 * log(u1))
#  puts "#{x1}"
#  puts "#{x2}"

  rand_values.push(x1)
  rand_values.push(x2)
end


rand_values.sort

puts "#{rand_values}"