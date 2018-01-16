include(Math)
require('cmath')

srand Time.now.to_i
$bin = []
(1..5000).step(2) do
  u1 = rand(0..100)
  u2 = rand(0..100)
  x1 = cos(2 * PI * u2) * CMath.sqrt(-2 * log(u1))
  x2 = sin(2 * PI * u2) * CMath.sqrt(-2 * log(u1))
  # can't think of an elegant way to put these into bins
  # what I know I don't want is a shit load of elsifs
  if x1.between?(-5, -4.9)
    $bin[0] = x1
  elsif x1.between?(-4.9, -4.8)
    $bin[1] = x1
  end

end
