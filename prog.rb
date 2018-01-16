include(Math)
require('cmath')

srand Time.now.to_i
#bin = Array.new(10) { 0 }
rand_values = []
bin_size = 0.01
num_bins = (1 / bin_size).ceil
bin = Array.new(num_bins) { 0 }

puts num_bins.to_s
puts bin.to_s

# construct bin assignment loop https://codereview.stackexchange.com/questions/38922/more-efficient-way-of-counting-the-number-of-values-within-an-interval

=begin
(1..5000).step(2) do
  u1 = rand
  u2 = rand
  x1 = cos(2 * PI * u2) * CMath.sqrt(-2 * log(u1))
  x2 = sin(2 * PI * u2) * CMath.sqrt(-2 * log(u1))
  rand_values.push(x1)
  rand_values.push(x2)
end

rand_values.each do |i|
  if i < -4
    bin[0] += 1
  elsif i < -3 && i >= -4
    bin[1] += 1
  elsif i < -2 && i >= -3
    bin[2] += 1
  elsif i < -1 && i >= -2
    bin[3] += 1
  elsif i < 0 && i >= -1
    bin[4] += 1
  elsif i < 1 && i >= 0
    bin[5] += 1
  elsif i < 2 && i >= 1
    bin[6] += 1
  elsif i < 3 && i >= 2
    bin[7] += 1
  elsif i < 4 && i >= 3
    bin[8] += 1
  else
    bin[9] += 1
  end
end

puts bin.to_s
=end