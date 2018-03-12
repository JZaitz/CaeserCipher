puts "*******************************"
puts "Caeser Cipher will take a string and a number to offset it by in the alphabet to encrypt your phrase."
puts "Please enter a phrase."

string = gets.chomp



puts "Please enter a number to offset it by (integer)."

offset = gets.chomp.to_i


def caeser_cipher(offset, string)
  return_str =""
  alph = "abcdefghijklmnopqrstuvwxyz"
  cap_alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  string.split("").each {|c|
    if alph.include?(c)
      c_index = alph.index(c)
      new_pos = c_index + offset
      new_alph_index = new_pos % 26
      return_str = return_str + alph[new_alph_index]
    elsif cap_alph.include?(c)
      c_index = cap_alph.index(c)
      new_pos = c_index + offset
      new_alph_index = new_pos % 26
      return_str = return_str + cap_alph[new_alph_index]
    else
      return_str = return_str + c

    end
  }
  return return_str

end

puts "Your encrypted phrase is:"
puts caeser_cipher(offset, string)


#Test Cases
puts caeser_cipher(9, "abchsdgegdkk")
puts caeser_cipher(24, "abc QRs!")
puts caeser_cipher(-4, "hi buddy")
