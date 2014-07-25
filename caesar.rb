
################################################
# Caesar Cipher:                               #
# Given a string and a "shift" number,         #
# return an encoded string, where each         #
# letter is shifted through the alphabet       #
# by the number of spaces in the shift number. #
################################################

def caesar(string, shift)
  letters = string.downcase.chars
  alphabet = ('a'..'z').to_a
  code_word = []
  letters.each do |letter|
    if  /[a-z]/ !~ letter
      code_word << letter
    else
      new_index = alphabet.index(letter) + shift
      if new_index > 25
        code_word << alphabet[new_index % 26]
      else
        code_word << alphabet[new_index]
      end
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

