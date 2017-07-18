# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(i)
  hash=Hash.new; ary=[]
  1.upto i do |a|
    next if a.even?
    ary.push(a-1) if a>1 && !a.even?
    puts ary
    hash[a] = ary if !a.even?
    puts ary
  end
hash
end

print staircase 1
print staircase 2
print staircase 3
print staircase 4
print staircase 5
