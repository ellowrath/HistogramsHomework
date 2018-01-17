=begin
Creates a normal distribution of 10,000 values, via the gaussian transform.
Then creates a histogram of those values.
=end

include(Math)
require('cmath')

srand Time.now.to_i
rand_values = []
bin = Array.new(100) { 0 }
highest_bin_index = 99

(1..10_000).step { rand_values << (cos(2 * PI * rand) * CMath.sqrt(-2 * \
log(rand))) }

lowest_value = rand_values.min
highest_minus_lowest = rand_values.max - lowest_value

rand_values.each { |i| bin[((i - lowest_value) / (highest_minus_lowest) * \
highest_bin_index).floor] += 1 }

p bin