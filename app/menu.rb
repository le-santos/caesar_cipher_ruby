class Menu
  def initialize;end

  def self.render
    new.render
  end

  def render
    system 'clear'
    choice = 's'

    while choice != 'n'
      puts '===== CAESAR CIPHER - Text encryption ====='
      puts
      puts 'Escreva o texto que deseja criptografar:'

      text = input_text
      value = input_value
      convert_text(text, value)

      choice = user_choice
    end

    puts "==== END OF ENCRYPTION ===="
  end

  def input_text
    loop do
      input = $stdin.gets.chomp
      break input if input.match(/[a-zA-Z]/)

      puts 'Entrada inválida: use apenas letras de a-z'
    end
  end

  def input_value
    loop do
      puts 'Digite o valor secreto:'
      value = $stdin.gets.chomp

      break value.to_i if value.match?(/\d/)

      puts 'Entrada inválida: digite um valor numerico'
    end
  end

  def convert_text(text, value)
    puts 'Seu texto codificado:'
    puts CaesarCipher.encrypt(text, value)
  end

  def user_choice
    loop do
      puts 'Deseja converter outro texto? (s ou n)'
      value = $stdin.gets.chomp

      break value if value.match?(/[sn]/)
    end
  end
end
