# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(arr)
  char_count=0;prime_counter=0;i=1
  arr.each{|a| char_count+=a.length}
  while i<=Math.sqrt(char_count).to_i do
    prime_counter+=i if char_count%i==0; i+=1
  end
  prime_counter==1 ? char_count==1 ? false: true : false
end
=begin
WP note:
basically, we want a method such that we'll count up to integers
< Math.sqrt char_count and then we'll set divisors =0 then add divisors to that
counter if the divisor divides char_count. Then we'll return true if = 1
=end
