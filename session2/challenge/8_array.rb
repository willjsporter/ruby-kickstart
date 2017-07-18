# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(ary)
  i=1;stopper=0
  (ary.length).times do
    ary[i]==ary[i-1] ? stopper+=1 : stopper=0
    break if stopper==2
    i+=1
    end
    stopper==2 ? true : false
  end
