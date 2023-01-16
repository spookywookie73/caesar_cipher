
def caesar_cipher(string, number)
  cipher = ''
  # seperate the letters in a string and then loop over each letter
  # check to see if the letters ordinal number falls within a certain range
  # if it does, add a number to it
  char_array = string.split('').map do |char_num|
    if char_num.ord > 64 && char_num.ord < 91 || char_num.ord > 96 && char_num.ord < 123
      new_num = char_num.ord + number
  # if the letter's new ordinal number falls outside of the alphabet range
  # subtract the aplhabet length from it then change it back to
  # a letter and add it to a string. 
      new_num -= 26 if (new_num > 91 && char_num.ord < 91 || new_num > 122)
      cipher += new_num.chr
    else
      cipher += char_num
    end
  end
  puts cipher
end

caesar_cipher('What a string!', 5)