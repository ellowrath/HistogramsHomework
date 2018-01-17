=begin
Creates a normal distribution of 10,000 values, via the gaussian transform.
Then creates a histogram of those values.
=end

include Math
require 'cmath'

# setting up variables
# seeding random (its not a security application, time is a fine seed)
srand Time.now.to_i
rand_values = []
bin = Array.new(100) { 0 }
highest_bin_index = 99
sum = 0
sample_variance = 0

# creating the array of random values
(1..10_000).step { rand_values << (cos(2 * PI * rand) * CMath.sqrt(-2 * \
log(rand))) }

# statistical shit
rand_values.each { |i| sum = sum + i }
mean =  sum / 10_000
rand_values.each { |i| sample_variance += (i - mean)**2 }
sample_variance = sample_variance / 9_999
standard_deviation = CMath.sqrt(sample_variance)

# setting up variables to map to 0-99 (100 bins)
lowest_value = rand_values.min
highest_minus_lowest = rand_values.max - lowest_value

# map the random values and increment the bin count at that index
rand_values.each { |i| bin[((i - lowest_value) / (highest_minus_lowest) * \
highest_bin_index).floor] += 1 }