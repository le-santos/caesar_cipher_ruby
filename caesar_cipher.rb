def caesar_cipher(text, parameter)
	encode_factor = parameter % 26

  def shift_letter(character, shift_factor)
    a_code = 'a'.ord
    letter_code = character.downcase.ord

		letters_to_shift = ((letter_code - a_code + 1)% 26) + shift_factor
		
		shifted_char = (letters_to_shift + 96).chr

    if character == character.upcase
      shifted_char.chr.upcase
    else
      shifted_char.chr
    end
  end

  cipher = text.split('').map do |char|
    if char =~ /[a-zA-Z]/ # filter non letters chars
      shift_letter(char, encode_factor)
    else
      char
    end
  end

  puts cipher.join
end
