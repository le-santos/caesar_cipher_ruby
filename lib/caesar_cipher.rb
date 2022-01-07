class CaesarCipher
  attr_reader :text, :shift_value

  def initialize(text, shift_value)
    @text = text
    @shift_value = shift_value
  end

  def self.encrypt(text, shift_value)
    new(text, shift_value).encrypt
  end

  def encrypt
    encode_factor = shift_value % 26

    cipher = text.split('').map do |char|      
      shift_letter(char, encode_factor)
    end

    cipher.join
  end

  private

  def shift_letter(character, shift_factor)
    a_code = 'a'.ord
    letter_code = character.downcase.ord

		letters_to_shift = ((letter_code - a_code + 1)% 26) + shift_factor
		
		shifted_char = (letters_to_shift + 96).chr

    return shifted_char.chr unless character == character.upcase

    shifted_char.chr.upcase
  end
end