def caesar_cipher(string, number)
  cipher = ''
  # seperate the letters in a string and then loop over each letter
  # check to see if the letters ordinal number falls within a certain range
  # if it does, add a number to it.
  string.split('').map do |char|
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      new_num = char.ord + number
      # if the letter's new ordinal number falls outside of the alphabet range,
      # subtract or add the aplhabet length from it, or to it, then change it back
      # to a letter and add it to a string.
      if number.positive?
        new_num -= 26 if new_num > 90 && char.ord < 91 || new_num > 122
        cipher += new_num.chr
      elsif number.negative?
        new_num += 26 if new_num < 97 && char.ord > 96 || new_num < 65
        cipher += new_num.chr
      end
    else
      cipher += char
    end
  end
  cipher
end

caesar_cipher('What a string!', 5)
caesar_cipher('What a string!', -1)
