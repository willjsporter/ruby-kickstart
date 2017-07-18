# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  def initialize(botnum)
      @botnum = botnum
    end

    attr_accessor :botnum

  def print_song(@botnum)
=begin
    case botnum
    when <0
      num=0
    when >99 num=99
    else
=end

    puts "#{botnum} bottles of beer on the wall,"
    puts "#{botnum} bottles of beer,"
    puts "Take one down, pass it around,"
    puts "#{botnum-1} bottles of beer on the wall."
  end
end

asdf=BeerSong.new 9
asdf.print_song(9)
