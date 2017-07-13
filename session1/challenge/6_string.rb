# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
    i=0; retval =""
    string.length.times do |i|
      if i.even? && !return_odds
        retval = retval+string[i]
      elsif !i.even? && return_odds
        retval = retval+string[i]
      end
    end
    retval
end

#want to return every other element (changes if even or odd)
#so will do arrstr.length.to_f/2 if 50 spaces then do 0 to 24 so 25 good
#if 51 spaces then do 0 to 25 so 26
