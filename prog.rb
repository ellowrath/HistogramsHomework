include(Math)
require('cmath')

srand Time.now.to_i
bin = Array.new
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

# rand_values.sort!

# puts "#{rand_values}"

rand_values.each do |i|
  if(i < -4)
    bin[0] = bin[0].to_i + 1
  elsif(i < -3 and i >= -4)
    bin[1] = bin[1].to_i + 1
  elsif(i < -2 and i >= -3)
    bin[2] = bin[2].to_i + 1
  elsif(i < -1 and i >=-2)
    bin[3] = bin[3].to_i + 1
  elsif(i < 0 and i >= -1)
    bin[4] = bin[4].to_i + 1
  elsif(i < 1 and i >= 0)
    bin[5] = bin[5].to_i + 1
  elsif(i < 2 and i >= 1)
    bin[6] = bin[6].to_i + 1
  elsif(i < 3 and i >= 2)
    bin[7] = bin[7].to_i + 1
  elsif(i < 4 and i >= 3)
    bin[8] = bin[8].to_i + 1
  else
    bin[9] = bin[9].to_i + 1
  end
end

puts "#{bin}"