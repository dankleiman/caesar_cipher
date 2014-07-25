#################################################
# Caesar Cipher Ord-to-Chr conversion:          #
#                                               #
# This version maintains case of initial input  #
#                                               #
# Given a string and a "shift" number,          #
# return an encoded string, where each          #
# letter is shifted through the alphabet        #
# by the number of spaces in the shift number.  #
#################################################

def caesar(string, shift)
  letters = string.chars
  code_word = []
  letters.each do |letter|
    if  /[a-zA-Z]/ !~ letter
      code_word << letter
    else
      new_ord = letter.ord + shift
      if letter.ord > 90
        first_letter = 97
      else
        first_letter = 65
      end
      code_word << (((new_ord % first_letter) % 26) + first_letter).chr
    end
  end
  code_word.join
end

##################
# Sample Ciphers #
##################

print "Passing \"a\" with a shift of 1 should return \"b\": "
puts caesar("a", 1)

print "This should also return \"b\": "
puts caesar("a", 27)

print "\"abc\" with a shift of 5 should return \"fgh\": "
puts caesar("abc", 5)

print "\"xyz\" with a shift of 5 should return \"cde\": "
puts caesar("xyz", 5)

print "\"Et tu, Brute?\" with a shift of 1: "
puts caesar("Et tu, Brute?", 1)

