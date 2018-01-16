=begin
Creates a normal distrobution of 10,000 values, via the gaussian transform.
Then creates a histogram of those values.
=end

include(Math)
require('cmath')

srand Time.now.to_i
rand_values = []
bin = Array.new(100) { 0 }
highest_bin_index = 99

(1..10_000).step do
  rand_values.push(cos(2 * PI * rand) * CMath.sqrt(-2 * log(rand)))
end

lowest_value = rand_values.min
highest_minus_lowest = rand_values.max - lowest_value

rand_values.each do |i|
  bin[((i - lowest_value) / (highest_minus_lowest) * highest_bin_index).floor] += 1
end

puts bin