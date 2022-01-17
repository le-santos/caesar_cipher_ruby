class CaesarCipher
  ALPHABET_SIZE = 26.freeze

  attr_reader :text, :shift_value

  def initialize(text, shift_value)
    @text = text
    @shift_value = shift_value
  end

  def self.encrypt(text, shift_value)
    new(text, shift_value).encrypt
  end

  def encrypt
    cipher = text.chars.map do |char|
      modify_letter(char)
    end

    cipher.join
  end

  private

  def modify_letter(character)
    shifted_char = encoded_letter(character).chr
    return shifted_char unless character == character.upcase

    shifted_char.upcase
  end

  def encoded_letter(char)
    char_code = char.downcase.ord
    shift_factor = shift_value % ALPHABET_SIZE
    letter_a_code = 'a'.ord

    (char_code + (shift_factor - letter_a_code) ) % ALPHABET_SIZE + letter_a_code
  end
end
