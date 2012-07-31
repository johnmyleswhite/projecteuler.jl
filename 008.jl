# Find the greatest product of five consecutive digits in the 1000-digit number.

#73167176531330624919225119674426574742355349194934
#96983520312774506326239578318016984801869478851843
#85861560789112949495459501737958331952853208805511
#12540698747158523863050715693290963295227443043557
#66896648950445244523161731856403098711121722383113
#62229893423380308135336276614282806444486645238749
#30358907296290491560440772390713810515859307960866
#70172427121883998797908792274921901699720888093776
#65727333001053367881220235421809751254540594752243
#52584907711670556013604839586446706324415722155397
#53697817977846174064955149290862569321978468622482
#83972241375657056057490261407972968652414535100474
#82166370484403199890008895243450658541227588666881
#16427171479924442928230863465674813919123162824586
#17866458359124566529476545682848912883142607690042
#24219022671055626321111109370544217506941658960408
#07198403850962455444362981230987879927244284909188
#84580156166097919133875499200524063689912560717606
#05886116467109405077541002256983155200055935729725
#71636269561882670428252483600823257530420752963450

digits = "73167176531330624919225119674426574742355349194934"
digits = strcat(digits, "96983520312774506326239578318016984801869478851843")
digits = strcat(digits, "85861560789112949495459501737958331952853208805511")
digits = strcat(digits, "12540698747158523863050715693290963295227443043557")
digits = strcat(digits, "66896648950445244523161731856403098711121722383113")
digits = strcat(digits, "62229893423380308135336276614282806444486645238749")
digits = strcat(digits, "30358907296290491560440772390713810515859307960866")
digits = strcat(digits, "70172427121883998797908792274921901699720888093776")
digits = strcat(digits, "65727333001053367881220235421809751254540594752243")
digits = strcat(digits, "52584907711670556013604839586446706324415722155397")
digits = strcat(digits, "53697817977846174064955149290862569321978468622482")
digits = strcat(digits, "83972241375657056057490261407972968652414535100474")
digits = strcat(digits, "82166370484403199890008895243450658541227588666881")
digits = strcat(digits, "16427171479924442928230863465674813919123162824586")
digits = strcat(digits, "17866458359124566529476545682848912883142607690042")
digits = strcat(digits, "24219022671055626321111109370544217506941658960408")
digits = strcat(digits, "07198403850962455444362981230987879927244284909188")
digits = strcat(digits, "84580156166097919133875499200524063689912560717606")
digits = strcat(digits, "05886116467109405077541002256983155200055935729725")
digits = strcat(digits, "71636269561882670428252483600823257530420752963450")

max_p = 0
digits = split(digits, "")
for index = 1:(numel(digits) - 4)
  local_digits = digits[index:(index + 4)]
  p = prod(map(d -> int(d), local_digits))
  if p > max_p
    max_p = p
    println(index)
  end
end
max_p