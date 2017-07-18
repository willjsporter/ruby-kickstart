# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    ret_str=""
    split('').each_with_index{|a,b| ret_str << a if b.even?}
    ret_str
  end
end
